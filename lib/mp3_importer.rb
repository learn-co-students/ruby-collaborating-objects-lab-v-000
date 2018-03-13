require 'pry'

class MP3Importer
  attr_accessor :filenames, :path

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    Dir.entries(path).each do |filename|
      #binding.pry
      @filenames << "#{filename}"
    end
    @filenames.delete_if {|x| x == "." || x == ".."}

  end

  def import
    files
    @filenames.each do |filename|
       Song.new_by_filename(filename)
    end
  end

end
