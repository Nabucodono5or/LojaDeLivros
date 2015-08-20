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
		
	def livros_por_categoria(categoria, &bloco)
		@livros[categoria].each do |livro|
		bloco.call livro
		end
	end	
end	
