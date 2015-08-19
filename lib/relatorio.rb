class Relatorio
	
	def initialize(biblioteca)
		@biblioteca = biblioteca
	end	
	
	def total
		soma = 0.0
		@biblioteca.livro.each do |liv|
			soma += liv.valor
		end	
		soma
	end	
end
