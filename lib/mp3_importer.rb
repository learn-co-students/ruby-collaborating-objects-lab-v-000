class MP3Importer

  attr_accessor :path, :files

  def initialize(path)

    self.path = path
  
  end

  def files
    #Returns an array of every element with pattern mp3
    array_of_MP3 = Dir.entries(self.path).grep(/mp3/)
  end

  def import 
   
   #files.each{|filename| Song.new_by_filename(filename)}
   #Artist.all.last.songs << Song.new_by_filename(filename)
   
   files.each do |file|
      artist_name, song_name = file.split(" - ")
      Artist.find_or_create_by_name(artist_name)
      Artist.all.last.songs << Song.new_by_filename(file)
   
      #Checks in mp2_importer_spec.rb
      #puts Artist.all.size
      #puts Artist.all.first.songs.empty? && Artist.all.last.songs.empty?
   
   end
 end
end
#Testing 
#test_music_path = "./spec/fixtures/mp3s"
#puts music_importer = MP3Importer.new(test_music_path)
#puts music_importer.files.size

#Artist.class_variable_set("@@all",[])
#      test_music_path = "./spec/fixtures/mp3s"
#      music_importer = MP3Importer.new(test_music_path)
#      music_importer.import



