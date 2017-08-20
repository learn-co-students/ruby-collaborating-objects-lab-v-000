require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    mp3_files = Dir["#{self.path}/*"]
    mp3_files.each {|filename| filename.slice! "./spec/fixtures/mp3s/"}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
