class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    filesplit = file_name.split(" - ")
    song = self.new(filesplit[1])
    song.artist_name = (filesplit[0])
    song
  end



end

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