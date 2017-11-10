require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/**/*.mp3"].collect do |song_names|
       song_names.gsub(/.*[\/]/, '')
    end
  end

  def import
    array = files.collect{ |filename| Song.new_by_filename(filename) }
  end
end
