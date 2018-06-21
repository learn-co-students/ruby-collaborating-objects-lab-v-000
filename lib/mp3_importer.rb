require 'pry'

class MP3Importer

  def initialize(music_path)
    @path = music_path
  end
  
  def files
    file_name_array = Dir[@path + "/*.mp3"]
    file_name_array.collect do |file|
      file.split("/")[-1]
    end
  end
  
  def import
    files = self.files
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end