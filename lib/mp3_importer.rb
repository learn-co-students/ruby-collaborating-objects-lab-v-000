
class MP3Importer
  attr_accessor :path
  attr_reader :files
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    
# "./db/mp3s/*.mp3" - all files

    results = Dir.glob("#{self.path}/*.mp3")
    

# './db/mp3s/' - sub for all files directory

    @files = results.collect{ |filename| filename.sub('./spec/fixtures/mp3s/', '') }
    
# .delete_prefix("./db/mp3s/") - better way but I'm not risking updating from 2.3.1 to 2.5.x in the browser IDE
    
    
    
  end

  def import
    # Song.new_by_filename(some_filename)
  end

end

# MP3Importer.new('./db/mp3s').import