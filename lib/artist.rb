
class Artist
  attr_accessor :name
  @@songs

  def initialize(name)
    @name = name
    @@songs = []
  end

  def self.all
    @songs = self
  end



end
