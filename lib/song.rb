class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    self.new(song_title)
    name = filename.split(" - ")[0]
    artist_name(name)
    # song_list = [ ]
    # files.each do |x|
    #   song_list <<  x.split(" - ")[1]
    # end
    # song_list.each { |y| Song.new(y) }

  end

  def artist_name=(name)
    if (self.artist.nil?) #TN: note this!
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end

end
