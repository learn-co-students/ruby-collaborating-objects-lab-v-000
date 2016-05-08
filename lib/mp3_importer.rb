class MP3Importer

  attr_accessor :path, :song_list, :files

  def initialize(path)
    @path = path

  end

  def files
    @path << "/*.mp3"
    @files = Dir.glob(@path)
    @files = @files.each {|songs| songs.slice! "./spec/fixtures/mp3s/" }
    @files
  end

  def import
    @path << "/*.mp3"
    @song_list = Dir.glob(@path)
    @song_list = @song_list.each {|songs| Song.new_by_filename(songs) }
    #Song.new_by_filename(song_list)
    #binding.pry
  end



end