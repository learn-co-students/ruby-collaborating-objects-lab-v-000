require "pry"
class MP3Importer
  attr_accessor :songs, :path

  def initialize(path)
  	@path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").map {|file| file.gsub("#{path}/", "")}
  end

  def import
    self.files.each{|file_name| Song.new_by_filename(file_name)}
  end



end 