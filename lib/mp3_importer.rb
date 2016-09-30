require 'pry'
class MP3Importer

@@all = []
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
   @@all << Song.new_by_filename(file_name)
binding.pry
1+2
end



end
