require 'pry'
class MP3Importer
attr_accessor :path, :test_music_path, :list_of_filenames, :name, :files_mp3
@list_of_filenames = []
  def initialize(test_music_path)
     @path = test_music_path
   end

   def files

  @files_mp3 =  Dir["#{@path}**/*.mp3"]
  @files_mp3.each{|file| file.slice! "#{@path}/"}
  @files_mp3

    end

    def import
     @files_mp3.each{ |filename| Song.new_by_filename(filename) }
   end
end
