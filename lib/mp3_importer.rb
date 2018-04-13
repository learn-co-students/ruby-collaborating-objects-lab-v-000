require "pry"
class MP3Importer
  attr_accessor :path

  def initialize( path)
    @path = path
  end

  def files
    files_arr = Dir.glob("#{path}/*.mp3")
    files_arr.map {|fn| fn.split("/").last}
  end


  def import

    files.map do |fn|
      # binding.pry
      Song.new_by_filename(fn)
      # check if this artist is already in the library
      #  add song to artist

    end
  end




end
