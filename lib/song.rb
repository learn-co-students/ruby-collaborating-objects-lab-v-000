class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(filename)
title = filename.split(' - ')
song =    self.new(title[1])
song.artist_name=(title[0])
song
  end

  def artist_name=(name)
    atrtist = Artist.find_or_create_by_name(name)
    atrtist.add_song(self)
  end


end
