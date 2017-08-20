class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect{|m| m.gsub("#{path}/","")}
  end

  def import
    files.each{|m| Song.new_by_filename(m)}
  end






end
