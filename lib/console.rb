require 'pry'

def reload!
    load 'lib/artist.rb'
    load 'lib/mp3_importer.rb'
    load 'lib/song.rb'
end

require_relative './artist.rb'
require_relative './mp3_importer.rb'
require_relative './song.rb'

Pry.start
