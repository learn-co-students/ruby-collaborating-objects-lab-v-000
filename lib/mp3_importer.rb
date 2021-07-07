require 'pry'

class MP3Importer

  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
  end


  def files
    Dir.glob(path+"/*.mp3").collect do |path_name|
      path_name.gsub(path+"/","")
    end

  end


  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end




end
