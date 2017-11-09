require 'pry'

class MP3Importer   

    attr_accessor :path
  

    def initialize(path)
        @path = path
    end

    def files        
         Dir.entries(path).reject {|item| item == ".." || item == "."}.size     
    end

    def import
    end

end

# changed_path = Dir.entries(path)
# changed_path.reject {|item| item == ".."}
# path.size

    # Let's start with the MP3 Importer. Build an MP3Importer class that parses a directory of files and sends the filenames to a song class to 
    # create a library of music with artists that are unique. To do this, you'll need two methods: MP3Importer#files and MP3Importer#import.
    #      Your MP3Importer class should also have a path attribute that gets set on initialization.
        
    #     You should write code that responds to MP3Importer.new('./db/mp3s').import. Google around for how to get a list of files in a directory! 
    #     Make sure you only get .mp3 files.
        
    #     Since we have to send the filenames to the Song class, we'll end up calling the following code in the #import method: 
    #     Song.new_by_filename(some_filename). This will send us to the Song class, specifically Song.new_by_filename.

