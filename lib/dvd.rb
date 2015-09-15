# encoding: utf-8
class DVD < Midia
	attr_reader :titulo

	extend FormatadorMoeda #métodos gerados são tratados como da própria classe
	
	formata_moeda :valor_com_desconto, :valor
	
	def initialize(titulo,valor,categoria)
		super()
		@titulo = titulo
		@valor = valor
		@categoria = categoria
	end	
	
		
	def to_s
		%Q{ Titulo: #{@titulo}, Valor: #{@valor} }
	end	
end
