require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @normalized_list = []
  end

  def files
    file_list = Dir[@path + "/*"]
    file_list.each do |x|
      m =  x.match(/(?<=\mp3s\/).*/)
      @normalized_list << m.to_s
    end
    @normalized_list
  end

  def import
    self.files
    @normalized_list.each do |x|
      Song.new_by_filename(x)
    end
  end
end
