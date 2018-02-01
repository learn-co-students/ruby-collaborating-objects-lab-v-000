require "pry"

class MP3Importer

  attr_accessor :path, :filename

  mp3s = []

  def initialize(path)
    @path = path
  end

  # def files
  #   @filename = @path.split("/").last
  # end

  def files
    @filename = Dir@path.split("/").last
    binding.pry
    # @path.each do |p|
    #   mp3s << split("/").last
    # end
    # mp3s
  end

  def import
    Song.new_by_filename(filename)
  end
end
