require "pry"
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def import
     filesarray= files
     filesarray.each{ |filename| Song.new_by_filename(filename)
     }
  end

    def files
    Dir.entries(@path).select do |filename|
      !(filename=="." || filename=="..")
      end
   end


end
