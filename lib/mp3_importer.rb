require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = nil
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").each do |file_name|
      # binding.pry
      file_name["./spec/fixtures/mp3s/"] = ""
      file_name
    end
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end

# @files =
# ["Action Bronson - Larry Csonka - indie.mp3",
#  "Real Estate - Green Aisles - country.mp3",
#  "Real Estate - It's Real - hip-hop.mp3",
#  "Thundercat - For Love I Come - dance.mp3"]
