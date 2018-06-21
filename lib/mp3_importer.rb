require "pry"

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    #Dir.entries(path).select {|file| file.end_with?(".mp3")}
    @files ||= Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{path}/", "")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
    # binding.pry
  end

  def import
   files.each do |file|
     Song.new_by_filename(file)
   end
  end

end
