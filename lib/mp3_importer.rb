require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(path).select do |file|
      file.include?('mp3')
    end
  end
#binding.pry
  def import
    Song.new_by_filename(filename)
  end
end