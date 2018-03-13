require 'pry'

class MP3Importer

    attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files ||= Dir.glob("#{self.path}/*.mp3").collect do |filename|
      filename.gsub("#{self.path}/", "")
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
