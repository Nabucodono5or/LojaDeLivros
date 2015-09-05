# encoding: utf-8

class Livro < Midia
	attr_reader :categoria, :autor
	
	def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
		super()
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


