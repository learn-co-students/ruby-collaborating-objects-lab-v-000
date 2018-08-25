class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
  @name = name
  end
  
  def self.new_by_filename(file)
      song = self.new
      # song_info = file.chomp(".mp3").split(" - ")
      # song.name = song_info[0]
      song
    end
  
  

end