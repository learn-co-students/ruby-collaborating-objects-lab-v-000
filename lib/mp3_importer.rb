class MP3Importer

attr_accessor :path

def initialize(path) #initialized w/ a path to parse MP3 files from
 @path = path # sets argument to variable
end

def files
  Dir.glob('*.mp3').collect {|file|}
end

def import

end


end
