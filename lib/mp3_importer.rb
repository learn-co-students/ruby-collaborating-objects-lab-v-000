class MP3Importer

  attr_accessor :path, :song_list, :files

  def initialize(path)
    @path = path
    @path << "/*.mp3"
    files
  end

  def files

    files = Dir.glob(@path)
    files = files.each {|songs| songs.slice! "./spec/fixtures/mp3s/" }
    #files = files.each {|songs| songs.slice! ".mp3" }
    files
  end

  def import
    #binding.pry
    #files
    files.each do |songs| 
      #binding.pry
      Song.new_by_filename(songs) 
    end
  end

end