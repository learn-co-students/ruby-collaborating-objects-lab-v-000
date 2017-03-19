require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files  # method stores file names in @files variable as an array
    @files = Dir["#{path}/*.mp3"].collect do |filename|
      File.basename(filename)  # removes path to files
      #binding.pry
    end
  end

  def import
    files.each do |filename|  # iterate over array from above method
      Song.new_by_filename(filename)  # pass file names to Song class
      #binding.pry
    end
  end
end


#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)

#music_importer.files
#music_importer.import
