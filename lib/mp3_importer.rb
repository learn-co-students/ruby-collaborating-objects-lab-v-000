require'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @path << "/*.mp3"
  end

  def files
    files = Dir.glob(@path)
    files = files.each {|songs| songs.slice! "./spec/fixtures/mp3s/" }
    files
    #binding.pry
  end

  def import
    #binding.pry
    files.each do |song|
      Song.new_by_filename(song)
    end
  end

end