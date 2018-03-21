class MP3Importer
  attr_reader :path

  def initialize(filepath)
    @path = filepath

  end

  def files
    # @files = Dir.entries(@path)[2..-1] - this assumes that I know the first 2 files are false positives, otherwise this would break
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    # ["Real Estate - It's Real - hip-hop.mp3"]
    @files.each do |file|
      parts = file.split(" - ")
      artist_name = parts[0]
      song_name = parts[1]

      a = Artist.find_or_create_by_name(artist_name)
      a.add_song(Song.new(song_name))

    end
  end

end
