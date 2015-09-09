# encoding: utf-8
class Revista
	
	@id = 0
	
	def initialize (titulo)
		@id = self.class.id
		@titulo = titulo
	end	
	
	def self.id
		@id +=1
	end	
	
	def id
		@id
	end	
	
	def titulo
		"Título : #{@titulo}"
	end	
	
end
