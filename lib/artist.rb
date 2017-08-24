class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(a_name)
    result = nil
    flag = 0

   if @@all != []
     @@all.each do |artist|
       if artist.name.to_s == a_name.to_s
         return artist
       elsif artist.name.to_s != a_name.to_s
         flag = 1
       end
     end
   elsif @@all == []
     result = self.new(a_name)
   end
   
   if flag == 1
     result = self.new(a_name)
   end
   result
  end

  def print_songs
    self.songs.each do |song|
      print "#{song.name}\n"
    end
  end

end
