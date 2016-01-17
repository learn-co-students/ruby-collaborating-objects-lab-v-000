require 'pry'

class Song
  attr_accessor:name, :artist

  def initialize(name)
    @name=name
  end


  def self.new_by_filename(filename)
        songinfo = filename.split("-")
        song = self.new(songinfo[1].strip)
        song.artist= Artist.find_or_create_by_name(songinfo[0].strip)
        song
       
  end

    

end
