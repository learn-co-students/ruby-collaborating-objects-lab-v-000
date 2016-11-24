require 'pry'
class MP3Importer
attr_accessor :path, :test_music_path, :list_of_filenames, :name, :new_file_array
@list_of_filenames = []
  def initialize(test_music_path)
     @path = test_music_path
   end

   def files
     #Dir.glob("*.MP3")
      new_file_array = Dir.glob(@path.collect{|file| file[1] == "mp3"})
    #binding.pry
    end

    def import(list_of_filenames)
     @list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
   end
end
