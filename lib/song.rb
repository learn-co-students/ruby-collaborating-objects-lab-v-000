
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file_name)
      new_file_name = file_name.split("-")

        song_name = new_file_name[1].strip
        song = self.new(song_name)

        artist_name = new_file_name[0].strip
        artist = Artist.find_or_create_by_name(artist_name)
          song.artist = artist
          song

  # binding.pry
  # 1+1
  end

    # describe '.new_by_filename' do
    #   it 'creates a new instance of a song from the file that\'s passed in' do
    #     new_instance = Song.new_by_filename(file_name)
    #     expect(new_instance.name).to eq('Black or White')
    #     expect(new_instance.artist.name).to eq('Michael Jackson')
    #   end


end
