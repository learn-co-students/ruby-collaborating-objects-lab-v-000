require "pry"
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # Set files to instance variable, accessible in entire program
    files = Dir["#{path}/*.mp3"].collect { |song| song.gsub("#{path}/","") }
  end

  def import
    files.each { |file| Song.new_by_filename(file)}
  end
end
