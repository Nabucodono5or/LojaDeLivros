# decoding: utf-8

require 'yaml'

class BancoDeArquivos

	def salva(livro)
		File.open("livros.yaml", "a") do |arquivo|
			arquivo.puts YAML.dump(livro)
			arquivo.puts ""
		end	
	end

	def carrega
		$/ = "\n\n"
		File.open("livros.yaml", "r").map do |livro_descerializado|
			YAML.load livro_descerializado
		end	
	end	

	
end
