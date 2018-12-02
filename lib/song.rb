class Song # belongs to Artist

  attr_accessor :name, :artist
	@@all = []

	def initialize(name)
		@name = name
		@artist = artist
    @@all << self
	end

  def self.all
    @@all
  end

# sets artist as instance var & method for song
#  def artist
#    @artist #tells song its artist name
#  end

  def self.new_by_filename(filename)
    #@name  = filename.split(" - ")[1]
    #@artist = filename.split(" - ")[0]
    song = self.new(filename.split(" - ")[1])
    song.artist = (filename.split(" - ")[0])
  #  binding.pry
  end
  #class end below
end
