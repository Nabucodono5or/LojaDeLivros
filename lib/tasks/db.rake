require 'fileutils'

namespace :db do
    desc "Limpa todas as revistas da pasta db/revistas"
    task :clear do
        FileUtils.rm Dir['db/revistas/*.yaml']
    end
end

