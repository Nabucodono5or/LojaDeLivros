# encoding: utf-8

class Biblioteca	

	def initialize
		@livros = {} # inicializa com um hash
	end

	def adciona(livros)
		@livros[livros.categoria] ||= []
		@livros[livros.categoria] << livros
	end
	
	def livro
		@livros.values.flatten
	end	
		
	def livros_por_categoria(categoria, imprime_p, imprime_puts)
		@livros[categoria].each do |livro|
			imprime_p.call livro
			imprime_puts.call livro
		end
	end	
end	
