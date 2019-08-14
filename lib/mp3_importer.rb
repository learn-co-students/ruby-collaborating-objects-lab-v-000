require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(path).select {|song| song.size > 3 }
    files
  end

  def import
    files.each do |song|
      imported = Song.new_by_filename(song)
      # binding.pry
    end
  end
end
