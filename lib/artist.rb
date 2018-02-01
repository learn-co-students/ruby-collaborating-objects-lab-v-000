class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # binding.pry
  end

  def self.all
    @@all
  end

  def add_song(song)
    # @song = song
    # song.artist = self
    @songs << song
    # binding.pry
            #     #[1] pry(#<Artist>)> song
            # => #<Song:0x00000001c00e58
            #  @artist=
            #   #<Artist:0x00000001c00d40
            #    @name="Michael Jackson",
            #    @song=#<Song:0x00000001c00e58 ...>,
            #    @songs=[#<Song:0x00000001c00e58 ...>]>,
            #  @name="Rock With You">

            #             [2] pry(#<Artist>)> song.artist
            # => #<Artist:0x00000001c00d40
            #  @name="Michael Jackson",
            #  @song=
            #   #<Song:0x00000001c00e58
            #    @artist=#<Artist:0x00000001c00d40 ...>,
            #    @name="Rock With You">,
            #  @songs=
            #   [#<Song:0x00000001c00e58
            #     @artist=#<Artist:0x00000001c00d40 ...>,
            #     @name="Rock With You">]>

            # [3] pry(#<Artist>)> @song
            # => #<Song:0x00000001c00e58
            #  @artist=
            #   #<Artist:0x00000001c00d40
            #    @name="Michael Jackson",
            #    @song=#<Song:0x00000001c00e58 ...>,
            #    @songs=[#<Song:0x00000001c00e58 ...>]>,
            #  @name="Rock With You">

            #             [4] pry(#<Artist>)> @songs
            # => [#<Song:0x00000001c00e58
            #   @artist=
            #    #<Artist:0x00000001c00d40
            #     @name="Michael Jackson",
            #     @song=#<Song:0x00000001c00e58 ...>,
            #     @songs=[...]>,
            #   @name="Rock With You">]
  end

  def songs
    @songs
  end

  def save
    # self.class.all << self
    @@all << self
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def self.create_by_name(name)
    artist = self.create
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end
end
