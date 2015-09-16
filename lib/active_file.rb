# encoding: utf-8

require "fileutils"

module ActiveFile

	def save
		@new_record = false
		File.open("db/revistas/#{@id}.yaml", "w") do |file|
			file.puts serialize
		end	
	
	end	
	
	
	def destroy
		unless @destroyed or @new_record
			@destroyed = true
			FileUtils.rm "db/revistas/#{@id}.yaml"
		end	
	end

	
	module ClassMethods
		def find(id)
			raise DocumentNotFound,"Arquivo db/revistas/#{id} não encontrado.",caller unless File.exists?("db/revistas/#{id}.yaml")
			YAML.load File.open("db/revistas/#{id}.yaml","r")
		end
		
		def next_id
			Dir.glob("db/revistas/*.yaml").size + 1
		end	
		
		def field(name)
			@fields ||=[]
			@fields << name
			
			get = %Q{
				def #{name}
					@#{name}
				end
				}
				
				
			set = %Q{
				def #{name}=(valor)
					@#{name} = valor
				end
				}
				
			self.class_eval get
			self.class_eval set
	
		end	
		
	end	
		
	
	def self.included(base)
		base.extend ClassMethods
		base.class_eval do
			attr_accessor :id, :destroyed, :new_record
			
			def initialize(parameters = {})
				@id = self.class.next_id
				@destroyed = false
				@new_record = true
				
				parameters.each do | key, value|
					instance_variable_set "@#{key}",value
				end	
			end	

		end

	end	
	
	private
	
	def serialize
		YAML.dump self
	end	
	
end
