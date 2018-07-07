class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    input_fields = filename.split(/(\.| - )/)
    song = Song.new(input_fields[2])
    song.artist_name = input_fields[0]
    song

  end

  def artist_name=(name)

    self.artist = Artist.find_or_create_by_name(name)

  end

end

#Testing Purposes

#Song.new('Man in the Mirror')
#file_name = 'Michael Jackson - Black or White - pop.mp3'
#new_instance = Song.new_by_filename(file_name)
#      puts new_instance.name #).to eq('Black or White')
#      puts new_instance.artist.name #).to eq('Michael Jackson')
    