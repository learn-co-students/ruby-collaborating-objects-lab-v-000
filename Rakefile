require_relative './config/environment'

puts "Welcome to Artists, Songs, and the MP3 Importer Machine..."

def reload!
  load './lib/artist.rb'
  load './lib/mp3_importer.rb'
  load './lib/song.rb'
end

desc "A console"
task :console do
  Pry.start
end
