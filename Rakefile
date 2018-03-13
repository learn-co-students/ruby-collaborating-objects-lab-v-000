require_relative './config/environment'

puts "Welcome to MP3Importer, Artists, and Songs..."

def reload!
  load './lib/artist.rb'
  load './lib/mp3_importer.rb'
  load './lib/song.rb'
end


desc "A console"
task :console do
  Pry.start
end