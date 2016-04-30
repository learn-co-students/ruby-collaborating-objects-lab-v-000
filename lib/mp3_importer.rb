require 'pry'

class MP3Importer
  attr_accessor :path, :artist

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |file| file.gsub("#{path}/", "") end
  end

  def import
    files.each do |file|
      Artist.all << Song.new_by_filename(file)
    end
  end


end