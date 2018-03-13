class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
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
#******** called on add_song method******** new error:
#Currently, if an artist already exists (i.e., if it successfully "finds" an existing artist), the return value for that entire method is `nil`
# b/c the value returned by `self.find_or_create_by_name(name)` was `nil` and you were setting `self.artist` equal to `nil` in `#artist_name=(name)`
# then, in the very next line, you try to call `.add_song(self)` on `artist`, which is nil
# so you try to call a method on a `nil` value
#That's why, when you ensure that `self.find_or_create_by_name(name)` *always* returns an Artist object, it works
#Because Artist objects _do_ have an `#add_song` method

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