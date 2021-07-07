
class MP3Importer

  attr_accessor :path, :artist, :song

def initialize(path)
  @path = path
end

def files
  Dir["#{path}/*.mp3"].collect do |file|
    array = file.split('mp3s/')
    array[1]
  end
end

def import
  filename = files
  filename.each do |file|
Song.new_by_filename(file)
end
end



end
