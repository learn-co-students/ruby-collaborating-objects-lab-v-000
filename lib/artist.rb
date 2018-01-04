class Artist
  attr_accessor :name
  @songs = []
  @@artist = []

  def initialize(name)
    @name = name
    @@artist << name
  end

  def songs
    @songs << self
    @songs
  end

  def save
    # self.save  ==> this is going infinite loop/crashing program
  end

  def find_or_create_by_name(name)
    if @@artist.include?(name)
      @@artist << self
    else
      self.new(name)
      @@artist << self
    end
  end



end
