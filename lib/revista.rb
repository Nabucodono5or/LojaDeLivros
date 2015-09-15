# encoding: utf-8
class Revista
	attr_reader :titulo, :id
	attr_accessor :valor #para permitir escrita no atributo valor
	
	def initialize(titulo,valor)
		@titulo = titulo
		@valor = valor
		@id = self.class.next_id #gerará um id automatico do método next_id
	end	
	
	def save
		File.open("db/revistas/#{@id}.yaml", "w") do |file|
			file.puts serialize
		end	
	
	end	
	
	def self.find(id)
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
