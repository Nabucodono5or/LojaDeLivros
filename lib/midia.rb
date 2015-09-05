# encoding: utf-8
class Midia
	attr_accessor :valor
	attr_reader :titulo 
	
	def initialize
		@valor = 10.1
		@desconto = 0.1
	end	
	
	def valor_com_desconto
		@valor - (@valor * @desconto)
	end
end
