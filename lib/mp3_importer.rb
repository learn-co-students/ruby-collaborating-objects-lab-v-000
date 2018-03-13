require 'pry'
class MP3Importer

  attr_accessor :path


  def initialize(file_path)
    @path = file_path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end#class MP3Importer
