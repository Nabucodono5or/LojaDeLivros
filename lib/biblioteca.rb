# encoding: utf-8

class Biblioteca	
	
	include Enumerable
	
	def initialize
		@banco = BancoDeArquivos.new
	end

	def adciona(midia)
		salva midia do
			midias << midia
		end
	end
	
		
	def livros_por_categoria(categoria)
		midias.select do |midia|
			midia.categoria == categoria if midia.respond_to? :categoria
		end	
	end
	

	def each
		midias.each { |midia| yield midia}
	end	
	
	def midias
		@midias ||= @banco.carrega
	end	
	
	
	private
		
	def salva(midia)
		@banco.salva midia
		yield
	end	
	
end	
