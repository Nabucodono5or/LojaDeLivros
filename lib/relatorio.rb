class Relatorio
	
	def initialize(biblioteca)
		@biblioteca = biblioteca
	end	
	
	def titulos
	@biblioteca.livros.map &:titulo
	end	
	
	def total
		@biblioteca.livros.map(&:valor).inject(:+) # {|tot, valor| tot += valor}	
	end	
end
