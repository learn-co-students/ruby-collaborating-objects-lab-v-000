class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    m = @@all.uniq.select { |e| e.name == name }
    
    if m.length == 0
      return self.new(name)  
    else
      return m[0]
    end
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    mat = @@all.select { |e| e.name == @name} 
    
    if mat.empty?
      @@all << self
      self
    else
      mat[0]
    end
  end
  
  def print_songs
    @songs.each do |e|
      puts "#{e.name}"
    end
  end
  
end