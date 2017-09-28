class Artist

  @@all = [ ]

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def songs

  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    #@all.each do |x|
  #    if x.name == name
  #  end
    if @@all.none?{ |x| x.name == name}
      name = self.new(name)
    end
  end

  def print_songs
    @songs.each { |x| puts "#{x.name}"}
  end
end
