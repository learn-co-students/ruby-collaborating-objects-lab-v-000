
class Artist #creating a class
attr_accessor :name, :songs #class has two attributes when instantiated

@@all = []  #empty hash to collect @@all

def initialize(name) #object is initialized with an argument name
  @name = name #set argument to equal variable
  @songs = [] #set variable to equal empty hash
end

def add_song(song) #argument of song to be added to array
  @songs << song #song added to array defined above
end

def self.all #instead of def all which is an instance method we use self to make it a class method
  @@all #making @@all available to be used as a method when calling .all
end

def save
  @@all << self #shoveling each instantiated object's self onto the empty hash created above
end

def self.find_or_create_by_name(name) #using self to operate on instantiated Artist object and passing in argument to be operated on
self.find(name) ? self.find(name) : self.create(name) #ternary operator; working on objects self are we able to use the find method below to match the name? if so return the found name else create using method below and name passed
end

def self.find(name) #operating on the objects self passing in argument to be compared
  self.all.find {|artist| artist.name == name} #using find method on all selves, iterating over all selves in @@all, calling each artist and asking if artist.name is equal to name passed as argument
end

def self.create(name)
  self.new(name).tap {|artist| artist.save}
end

#def self.find_or_create_by_name(name) #argument of name to be found or created
#  @@all.find do |name|  #iterating over each obect in @@all and setting each to equal 'name'
#    if name == Artist.name #if the name is equal to the artists name already created
#      Artist.name #return the artists name
#    else
#      name = Artist.new(name) #if not, let the name be equal to a new artist with the argument originally provided
#    end
#  end
#end


def print_songs
  puts @songs.collect {|song| song.name} #iterates over each variable in @songs array, names each object 'song' and returns name
end

end
