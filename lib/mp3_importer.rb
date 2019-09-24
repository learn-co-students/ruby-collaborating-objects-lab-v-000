class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
  Dir.entries(path).select do |file|
    file.include?(".mp3")
  end
end

def import
  # p files
   files.each {|filename|
    Song.new_by_filename(filename)}
    p Artist.all.each{|x| puts x.name}
  end

end
