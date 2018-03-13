require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    #@files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
    @files = Dir.glob("#{path}/*.mp3").collect {|f| f.gsub("#{path}/", "")} #not sure why all of a sudden this works but it does
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  
  end


end
