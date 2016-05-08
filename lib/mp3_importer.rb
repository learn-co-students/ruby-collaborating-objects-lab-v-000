class MP3Importer

  attr_accessor :path, :song_list, :files

  def initialize(path)
    @path = path
    @path << "/*.mp3"
  end

  def files

    @files = Dir.glob(@path)
    @files = @files.each {|songs| songs.slice! "./spec/fixtures/mp3s/" }
    #binding.pry
    @files
  end

  def import
    files
    @files.each {|songs| Song.new_by_filename(songs) }
  end



end