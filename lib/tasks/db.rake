require 'fileutils'

namespace :db do
    desc "Limpa todas as revistas da pasta db/revistas"
    task :clear, [:folder] do |task, args|
        FileUtils.rm Dir['db/#{args.folder}/*.yaml']
    end
    
    desc "Popula os dados definidos no arquivo db/folder/seeds.rb"
    task seed, [:folder] do 
    	seed_file = File.expand_path "db/#{args.folder}/seeds.rb"
    	load(seed_file) if File.exist?(seed_file)
    end	
    
    desc "Popula com os dados definidos no arquivo db/folde/seeds.rb"
    task reseed, [:folder] => ["db:clear", "db:seed"] do
    end
    
end

