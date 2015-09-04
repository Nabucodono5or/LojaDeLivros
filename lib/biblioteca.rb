# encoding: utf-8

class Biblioteca	

	def initialize
		@livros = {} # inicializa com um hash
		@banco = BancoDeArquivos.new
	end

	def adciona(livros)
		salva livros do
			@livros[livros.categoria] ||= []
			@livros[livros.categoria] << livros
		end
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

	private
	
	def salva(livros)
		@banco.salva livros
		yield
	end	
	
end	
