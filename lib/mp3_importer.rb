require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    cleaned_files = Dir[@path+"/*.mp3"].collect do |file|
      file.slice!(@path+"/")
      file
    end
    cleaned_files
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
