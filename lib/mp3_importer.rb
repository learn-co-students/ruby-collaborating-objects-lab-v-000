class MP3Importer

  attr_accessor :path, :size

  @@all = []

def initialize(path)
  @path = path
end

def files
  array_files = []
  Dir.entries(@path).each do |x|
    if x.include?(".mp3")
      array_files << x
    end
  end
  array_files
end

def import
  files.each do |filename|
    Song.new_by_filename(filename)
  end
end



end
