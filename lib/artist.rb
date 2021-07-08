

class Artist
  attr_accessor :name

  @@all = []  
  def initialize(name)
    @name = name
    
    @songs = []  #why does this line need to be 
    #in the initialize method? if i put it outside,
    #i get a NoMethodError - undefined method << for
    #nil:NilClass
  end

  def self.all 
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  #def self.find_or_create_by_name(new_artist) 
    # self.all.detect {|name| name == new_artist}

    #   if @@all.include? (new_artist)
    #     new_artist = self.all.detect 


    #     @@all.select {|artist| artist.to_s == new_artist}
    #   else
    #     new_artist = self.new(new_artist)
    #   end
    # end

    # def self.find_or_create_by_name(artist_name)
    #   name = self.all.detect {|x| x == artist_name}
      
    #   if name == nil
    #     artist_name = self.new(artist_name)
    #   else
    #     artist_name = name
    #   end
    # end

  

  def self.create_by_name(artist_name)
    artist_1 = Artist.new(artist_name)
    artist_1.name = artist_name
    artist_1.save
    artist_1
  end

  def self.find_by_name(artist_name)
    self.all.detect {|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    if self.find_by_name(artist_name) == nil
      artist_1 = self.create_by_name(artist_name)
    else
      self.find_by_name(artist_name)
    end
  end
  

    # if (self.name.nil?)
    #   artist = self.new(new_artist)
    # else
    #   self.name
    # end
    # artist


  def print_songs
    @songs.each {|song| puts song.name}
  end


end