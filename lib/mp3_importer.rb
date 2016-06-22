class MP3Importer 
  attr_accessor :path

@@songs = []

def initialize(path)
    @path = path
  end

def files
  Dir["#{path}/*.mp3"].map {|file| (file.split("/")).last}
end

def import
    files.each do |file_name| 
      @@songs<<Song.new_by_filename(file_name)
   end
   @@songs
  end

end


#files = ["Action Bronson - Larry Csonka - indie.mp3",
# "Real Estate - Green Aisles - country.mp3",
# "Real Estate - It's Real - hip-hop.mp3",
# "Thundercat - For Love I Come - dance.mp3"]
