class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path  #'./db/mp3s'
end

def files
  Dir.glob("#{path}/*.mp3").collect{|file| file.gsub("#{path}/", "")}
end

def import
  self.files.each{|file| Song.new_by_filename(file)}
end



end
