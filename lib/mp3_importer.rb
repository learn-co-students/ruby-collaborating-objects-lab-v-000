

class MP3Importer
attr_accessor :path

def initialize(path)
  @path = path
end

def files
  files = Dir.glob("#{path}/*.mp3")
  files.each do |file|
    file.slice!("#{path}/")
  end
end


def import
 files.each {|file| Song.new_by_filename(file)}
end
end
