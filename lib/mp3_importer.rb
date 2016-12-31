require 'pry'

class MP3Importer

attr_accessor :path

@@library = []
@files_mp3 = []
def initialize(path)
  @path = path
end

def files

  @files_mp3 =  Dir["#{@path}**/*.mp3"]
  #binding.pry
  @files_mp3.each{|file| file.slice! "#{path}/"}
  @files_mp3
#binding.pry
end

def import

files.each{|file| Song.new_by_filename(file)}
end
end
