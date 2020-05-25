require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
    @import = []
  end

  def files
    Dir.chdir(path) do
      Dir.glob("*.mp3").each do |song|          
          @import << song          
      end
    end
  end

  def import
   files
   @import.each do |x|
    #binding.pry
      Song.new_by_filename(x)
    end
  end

end