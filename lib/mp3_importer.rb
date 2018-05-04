require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
     Dir.entries(@path).reject do |files|
    !files.include?("mp3")
    end
  end


  def import
    self.files.each do |files|
      Song.new_by_filename(files)
   end
  end

end
