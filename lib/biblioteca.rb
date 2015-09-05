# encoding: utf-8

class Biblioteca	
	
	def initialize
		@banco = BancoDeArquivos.new
	end

	def adciona(livro)
		salva livros do
			@livros << livro
		end
	end
	
		
	def livros_por_categoria(categoria)
		@livros.select { |livro| livro.categoria == categoria}
	end

	private
	
	def livros
		@livros ||= @banco.carrega
	end	
	
	def salva(livros)
		@banco.salva livros
		yield
	end	
	
end	
