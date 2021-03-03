require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(file_path)
    @path = file_path
  end

  def files
  #  binding.pry
    full_files = Dir.glob("#{self.path}/*.mp3")
    @files = full_files.collect {|file| file = File.basename(file)}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end