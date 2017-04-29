class Song

  attr_accessor :name, :artist

  def initialize(title)
    @name = title

  end

  def self.new_by_filename(filename)
    filename_info = self.filename_splitter(filename)

    if filename_info[0].is_a?(Array)
      filename_info.each do |filename|
        # binding.pry
        song = Song.new(filename[1])
        artist = self.artist_name(filename[0])
        # binding.pry
        artist.add_song(song)
      end
    else
      # binding.pry
      song = Song.new(filename_info[1])
      artist = self.artist_name(filename_info[0])
      song.artist= artist
      song
      # binding.pry

    end
    # binding.pry

  end

  def self.artist_name(name)
    Artist.find_or_create_by_name(name)
    # binding.pry

  end

  def self.filename_splitter(filename)
    # binding.pry
    if filename.is_a? String
      filename.split(' - ')
    else
      filename.map! do |filename|
        filename.split(' - ')
      # filename[1].chomp!(".mp3")
      end
    end

    # binding.pry
  end

end
