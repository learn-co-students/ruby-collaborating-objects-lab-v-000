class MP3_Importer
# parses filenames and sends them to the song class
  attr_accessor :path

  def initialization(file_name)


  def files

  end

  def import
    Song.new_by_filename(some_filename)
  end

end

#parses dirctory of files -- snds names to song class to create
@ a library of music for each artist

respond to MP3Importer.new('./db/mp3s').import

??
