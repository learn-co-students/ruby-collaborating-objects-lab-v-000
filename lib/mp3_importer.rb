require "pry"
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    all_files = []
    Dir["#{@path}/*"].each do |file_name|
      #binding.pry
      if file_name.end_with?(".mp3")
        file_name=file_name.gsub("./spec/fixtures/mp3s/", "")
        all_files << file_name
      end
    end
    all_files
    
  end
  
  def import 
    self.files.each do |file|
      file=file.split(" - ")
      artist_name=file[0]
      song_name=file[1]
      genre_name=file[2]
      Song.new(song_name)
      #find or create an artist for the song
    end
  end
end