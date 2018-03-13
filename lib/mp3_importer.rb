require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
    @files=[]
  end
  def files
    # Dir.entries("./db/mp3s").select{||}
    Dir["#{@path}/*.mp3"].map{|file|
    file.split("/").last}
  end
  # binding.pry
  def import
    musicFiles = self.files
    musicFiles.each { |file|
      song = Song.new_by_filename(file)  
    }
  end
end
 music_importer = MP3Importer.new("./spec/fixtures/mp3s")

 puts music_importer.import
