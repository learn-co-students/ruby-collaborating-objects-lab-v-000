require 'pry'
class MP3Importer

attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file = Dir.glob("#{path}/*.mp3")
      no_path_file =  Dir.entries(self.path)
      # binding.pry
    no_path_file.delete("..")
    no_path_file.delete(".")
    no_path_file

  end

def import
  @@all << self.new(path)

end



end
