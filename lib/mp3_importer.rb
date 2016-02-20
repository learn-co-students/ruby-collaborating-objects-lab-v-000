require 'pry'
class MP3Importer 
attr_accessor :path, :songs


def initialize(path)
  @path=path
  @songs=[]
end

def files
  music_files=[]
  music_files= Dir[@path+"/*"]
  music_files.map {|name| File.basename name}
 
end

def import
  holder=[]
  files.each do |string|
    File.basename(string,".mp3")
    holder<<string
    end
    holder.each do |file|
    Song.new_by_filename(file)
  end
  end
end


 