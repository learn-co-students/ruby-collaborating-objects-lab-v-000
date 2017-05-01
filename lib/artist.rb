class Artist
attr_accessor :name, :songs
@@all = []

def initialize (name)
@name = name    
@songs = []
save
end

def add_song(song)
@songs << song   
end

def save
@@all << self
end

def self.all
@@all    
end

def self.artist_exists?(artist_name)
            found_artist = false
            @@all.each{|curr_artist|
                                    if curr_artist.name == artist_name
                                    found_artist = curr_artist
                                    end
                        }       
            
found_artist
end


def self.find_or_create_by_name(artist_name)
            
            if artist_exists?(artist_name)
            artist_exists?(artist_name)    
            else
                new_artist = self.new(artist_name)
                new_artist
            end

end


def print_songs
@songs.each {|current_song| puts current_song.name}
end


end
