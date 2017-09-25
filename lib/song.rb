class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name=name
  end

  def new_by_filename(file_name)
    filearray = file_name.split(" - ")
    song = Song.new(filearray[1])
    song.artist.name = filearray[0]
    song
  end 

end 
