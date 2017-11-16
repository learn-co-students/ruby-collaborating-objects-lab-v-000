class Artist
  attr_accessor :name, :songs
   @@all=[]

  def initialize(name="")
    @name=name
    @songs=[]
    @@all<<self
  end

  def add_song(song)
    self.songs<<song
  end

  #def songs
  #  songs
  #end

  def save
    self.class.all << self
    #@@all<<self
  end

  def self.all
    @@all
  end

 def self.find_by_name(name)
   @@all.select{|a| a.name==name}[0]
 end

 def self.create_by_name(name)
   artist=self.new(name)
   #artist.name=name
   #@@all<<self
   artist
 end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def print_songs
    list=""
    @songs.each { |s| list+="#{s.name}\n" }
    puts list
  end


end
