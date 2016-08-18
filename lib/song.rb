class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    Artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.name = file_name.split(" - ")[1]
    song.artist_name = file_name.split(" - ")[0]
    song
  end


end

#So the problem is that your Song #new_by_filename method 
#associates the newly-created Song w/ an Artist, but it doesn't associate that Artist w/ the Song

# GJ SAID 12 HOURS AGO
# If it makes you feel better, that RSpec test was added recently – 
#I didn't have to account for that circumstance when I completed the lab a while ago

# GJ SAID 11 HOURS AGO
# I can walk you through what you need to fix if you prefer, or you can give it a shot first



 # def import
 #    self.files.each {|file_name| Song.new_by_filename(file_name)}
 #  end

#Action Bronson - Larry Csonka - indie.mp3
#Artist - song - genre.mp3

#   describe '#import' do 
#     it 'imports the files into the library by creating songs from a filename' do
#       Artist.class_variable_set("@@all",[])
#       test_music_path = "./spec/fixtures/mp3s"
#       music_importer = MP3Importer.new(test_music_path)
#       music_importer.import

#       expect(Artist.all.size).to eq(3)
#       expect(Artist.all.first.songs.empty? && Artist.all.last.songs.empty?).to eq(false)
#     end
#   end
# end