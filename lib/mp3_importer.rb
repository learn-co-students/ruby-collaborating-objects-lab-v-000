class MP3Importer
  
attr_accessor :path, :mp3_files
  
@@mp3_files = []


def initialize(filepath)
  @path = filepath
  @files = []
  @@all = []
end
  
def files
  @@mp3_files = Dir.entries(@path)-['.','..']
end

def import
  @@mp3_files.each do |file| 
  newsong = Song.new_by_filename(file)
  end
end
  
  
  
end 








