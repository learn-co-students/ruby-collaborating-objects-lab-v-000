require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    found = Dir[@path + "/*.mp3"]
    filenames_list = found.collect do | filename |
      filename = filename.split("/")
      filename = filename[filename.length - 1]
      #end collect
    end
    filenames_list
    #files_function end
  end

  def import
    list_of_songs = Array.new
    list_of_songs = files()
    list_of_songs =list_of_songs.collect do | file |
      file = Song.new_by_filename(file)
    end
    list_of_songs
    #end of import
  end
end
