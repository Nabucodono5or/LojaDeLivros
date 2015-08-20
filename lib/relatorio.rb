class Relatorio
	
	def initialize(biblioteca)
		@biblioteca = biblioteca
	end	
	
	def total
		@biblioteca.livro.inject(0){|tot,liv| tot +=liv.valor}	
	end	
end
