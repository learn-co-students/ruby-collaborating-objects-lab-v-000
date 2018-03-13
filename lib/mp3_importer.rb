require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir.glob("#{@path}/*.mp3").collect { |song| File.basename(song)}
  end
  def import
    #binding.pry
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end


end
#binding.pry
