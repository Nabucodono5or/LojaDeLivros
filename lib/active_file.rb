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
		
		def self.next_id
			Dir.glob("db/revistas/*.yaml").size + 1
		end	
		
		def field(name)
			@fields ||=[]
			@fields << name
		end	
		
	end	
	
	def self.included(base)
		base.extend ClassMethods
	end	
	
	private
	
	def serialize
		YAML.dump self
	end	
	
end
