require 'pry'
class MP3Importer

  attr_accessor :path

def initialize(filepath)
@path = filepath

end

def files
  files =  Dir.entries(@path) - ["."] - [".."]

end

def import
files.each do |filename|
Song.new_by_filename(filename)
end
end


end
