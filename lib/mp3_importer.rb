class MP3Importer
  attr_accessor :path

def initialize(path)
  self.path = path
end

def files
  new_files = []
  Dir.foreach(path) do |item|
    next if item[0] == '.' 
    if item.match(/\.mp3$/)
      new_files << item
    end 
  end 
  new_files
end

def import
   self.files.each {|file| Song.create_from_filename(file) if file.match(/\.mp3$/)}
end
end 
