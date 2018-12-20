class Artist
  
  attr_accessor :name, :artist, :all
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_or_create_by_name(name)
    
  #   describe '.find_or_create_by_name' do
  #   it 'finds or creates an artist by name maintaining uniqueness of objects by name property' do
  #     artist_1 = Artist.find_or_create_by_name("Michael Jackson")
  #     artist_2 = Artist.find_or_create_by_name("Michael Jackson")
  #     expect(artist_1).to eq(artist_2)
  #   end

  #   it 'Creates new instance of Artist if none exist' do
  #     artist_1 = Artist.find_or_create_by_name("Drake")
  #     expect(artist_1.class).to eq(Artist)
  #   end
  # end
    
  end
end