# encoding: utf-8
class Revista
	
	@id = 0
	
	def initialize (titulo)
		@id = self.class.id
		@titulo = titulo
	end
	# um modo de criar um método na class
	class << self
		def id
			@id +=1
		end
	end	
	
	def id
		@id
	end	
	
	def titulo
		"Título : #{@titulo}"
	end	
	
end
