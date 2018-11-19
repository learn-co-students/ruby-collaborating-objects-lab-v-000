require 'pry'

class MP3Importer

attr_accessor :path

def initialize(path) #initialized w/ a path to parse MP3 files from
 @path = path # sets argument to variable
end

def files
#binding.pry
 @files = Dir.glob("#{@path}/*.mp3").collect {|file| file.gsub("#{@path}/", "")}

end

def import

end


end
