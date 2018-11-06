class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
 #filename = Song.new(filename) returns entire filename rather than song name
 filename.chomp("-")
 puts filename
end

end
