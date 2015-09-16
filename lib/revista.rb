# encoding: utf-8
 require 'fileutils'
class Revista
	
	attr_reader :titulo, :id, :destroy, :new_record
	attr_accessor :valor #para permitir escrita no atributo valor
	
	
	def initialize(titulo,valor)
		@titulo = titulo
		@valor = valor
		@id = self.class.next_id #gerará um id automatico do método next_id
		@destroyed = false
		@new_record = true
	end	
	
	
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


	def self.find(id)
		raise DocumentNotFound,"Arquivo db/revistas/#{id} não encontrado.",caller unless File.exists?("db/revistas/#{id}.yaml")
		YAML.load File.open("db/revistas/#{id}.yaml","r")
	end	
	
	private
	
	def self.next_id
		Dir.glob("db/revistas/*.yaml").size + 1
	end	
	
	def serialize
		YAML.dump self
	end	
	
end
