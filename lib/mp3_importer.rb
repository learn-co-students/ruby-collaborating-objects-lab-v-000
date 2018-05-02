require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @@array = Dir.glob("#{@path}/*.mp3")
    @@array = @@array.collect do |file|
      file.split("/")[-1]
    end
    @@array
    #binding.pry
  end

  def import
    #binding.pry
    @@array.each {|filename|
      #binding.pry
      Song.new_by_filename(filename)
    }
  end

end
