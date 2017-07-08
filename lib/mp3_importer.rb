class MP3Importer

attr_accessor :path, :files

def initialize(path)
  @path = path
end


def files
  Dir.entries(@path).grep(/.mp3/)
end


def import
  files.each do |file|
    Song.new_by_filename(file)
end
end

end
