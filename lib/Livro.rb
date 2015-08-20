# encoding: utf-8
class Livro
	attr_accessor :valor
	attr_reader :categoria
	attr_reader :autor
	attr_reader :titulo
	
	def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
		@titulo = titulo
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@valor = valor
		@categoria = categoria
	end
	
	def to_s #sobrescrita do método to_s
		"Titulo #{@titulo}, Autor: #{@autor}, ISBN: #{@isbn}, páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
	end

end	


