require 'pry'
class MP3Importer

  attr_accessor :files, :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(@path)[1..-2]
  end

  def import
    files.each do |song|
       Song.new_by_filename(song)
    end
  end

end