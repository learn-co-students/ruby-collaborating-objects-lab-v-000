class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
  end
  
  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|something| something.name == name}
  end

  def self.create_by_name(name)
     self.new(name).tap {|artist| artist.save}
   end

   def self.find_or_create_by_name(name)
     self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
   end



   def print_songs
     @songs.each do |x|
       puts x.name
     end
   end
end
