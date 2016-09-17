require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end

  def files
    self.files = Dir.entries(self.path).reject { |entry| entry == "." || entry == ".."  }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
    binding.pry
  end
end
