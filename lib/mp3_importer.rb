#The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class

class MP3Importer #name of class
  attr_reader :path #create an attribute reader of path

  def initialize(path) #initialize with path attribute
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end #parses a directory of files

  def import
    files.each{|f| Song.new_by_filename(f)} #this will send files to the song class
  end
end
