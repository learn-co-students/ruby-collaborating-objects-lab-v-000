class MP3Importer

  attr_accessor :path, :song_list

  def initialize(path)
    @path = path

  end

  def import
    @path << "/*.mp3"

    @song_list = Dir.glob(@path)
    @song_list.each {|songs| Song.new_by_filename(songs) }
    #Song.new_by_filename(song_list)
    #binding.pry
  end

  def files
  end

end