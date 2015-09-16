# encoding: utf-8
 require 'fileutils'
class Revista
	
	attr_reader :titulo, :id, :destroy, :new_record
	attr_accessor :valor #para permitir escrita no atributo valor
	
	include ActiveFile
	
	def initialize(titulo,valor)
		@titulo = titulo
		@valor = valor
		@id = self.class.next_id #gerará um id automatico do método next_id
		@destroyed = false
		@new_record = true
	end	
		
	
end
