require 'pry'

class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(self.path).select {|f| !File.directory? f}
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end