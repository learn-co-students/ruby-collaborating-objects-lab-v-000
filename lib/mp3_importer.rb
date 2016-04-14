class MP3Importer


attr_accessor :path

def initialize(path)
@path = path
@@newsongs = []

end


def files
files_folder = Dir.entries(path)
files_folder.delete(".")
files_folder.delete("..")
files_folder

end

def import
artists = []
files.each { |x| artists << x.split(" - ")[0]}
songs = []
files.each { |x| songs << x.split(" - ")[1]}

songs.each { |x| @@newsongs << Song.new(x)

}

end

end


#

#Notes - mp3 will parse and send to Song class. 
#Song class will create songs given the filename and send the Artist class the artists name
#Artist class will be creating the artist if doesnt exist or creating

#MP3 - 2 methods. #files, #import. :path attribute on initilaztion. 
#responds to MP3Importer.new('./db/mp3s').import ***GOOGLE to get a list of files in a director. only mp3files
#import will send to the Song class. Song.new_by_filename(somename)