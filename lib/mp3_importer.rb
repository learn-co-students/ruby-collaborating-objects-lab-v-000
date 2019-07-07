require 'pry'

class MP3Importer
  attr_accessor :path
  attr_writer :files

  def initialize(filepath)
    self.path = filepath
  end

  def files
    #Temporarily change directory to the path provided on initialization
    #Directory will go back to current directory once block executes
    Dir.chdir(self.path) do
      #Grab all files in the directory that are mp3 format
      self.files = Dir.glob("*.mp3")
    end
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

# MP3Importer.new("./spec/fixtures/mp3s")
