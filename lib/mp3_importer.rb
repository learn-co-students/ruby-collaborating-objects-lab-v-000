require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
    # binding.pry

  end

  def files
    list = Dir.entries(path).select {|file| file.include?(".mp3")}
    # p list
  end

  def import

    files.each do |filename|
      song = Song.new_by_filename(filename)
      # binding.pry
    end
    # Artist.all.each {|x| p x}

  end

end
