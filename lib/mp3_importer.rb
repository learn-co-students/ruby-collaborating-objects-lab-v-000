require"pry"
class MP3Importer

attr_accessor :song, :path

def initialize(path)
  @path = path
end

def files
  Dir.entries(self.path).select {|file| file[/\.mp3$/]}
end

def import
  # binding.pry
  self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
