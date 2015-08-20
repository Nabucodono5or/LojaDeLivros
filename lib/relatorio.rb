class Relatorio
	
	def initialize(biblioteca)
		@biblioteca = biblioteca
	end	
	
	def titulos
	@biblioteca.livro.map &:titulo
	end	
	
	def total
		@biblioteca.livro.map(&:valor).inject(0) {|tot, valor| tot += valor}	
	end	
end
