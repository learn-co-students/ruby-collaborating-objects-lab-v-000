require 'pry'
class MP3Importer
attr_accessor :test
@@all = []
def initialize(test_music_path)
   @test_music_path = test_music_path
   #binding.pry
 end
 def path
   @test_music_path

 end
  def files
    store = Dir.entries(@test_music_path)
    files = store.slice(2,store.size)
  end
  def import
    #binding.pry
    files.each{|x| Song.new_by_filename(x)}
  end
end
