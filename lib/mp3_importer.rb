class MP3Importer

attr_accessor :path, :files

def initialize(path)
  @path = path
end

def files
  #Dir.entries(@path).select {|n| n[/\.mp3$/]}#select all entries with .mp3
  Dir.entries(@path).grep(/.mp3/)#select all entries with .mp3
end

def import
  files.each {|file| Song.new_by_filename(file)}
  end

end
