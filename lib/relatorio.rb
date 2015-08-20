class Relatorio
	
	def initialize(biblioteca)
		@biblioteca = biblioteca
	end	
	
	def titulos
	@biblioteca.livro.map &:titulo
	end	
	
	def total
		@biblioteca.livro.map(&:valor).inject(:+) # {|tot, valor| tot += valor}	
	end	
end
