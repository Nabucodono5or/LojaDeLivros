# encoding: utf-8

class Biblioteca	
	
	include Enumerable
	
	def initialize
		@banco = BancoDeArquivos.new
	end

	def adciona(livro)
		salva livro do
			livros << livro
		end
	end
	
		
	def livros_por_categoria(categoria)
		livros.select { |livro| livro.categoria == categoria}
	end
	

	def each
		livros.each { |livro| yield livro}
	end	
	
	def livros
		@livros ||= @banco.carrega
	end	
	
	
	private
		
	def salva(livros)
		@banco.salva livros
		yield
	end	
	
end	
