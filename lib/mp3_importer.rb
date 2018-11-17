require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |f|
    f.gsub("#{path}/", "")
    end
  end

  def import
    files.each do |f|
      Song.new_by_filename(f)
    end
  end

end
