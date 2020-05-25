class MP3Importer

attr_accessor :path

def initialize(filename)
  @path = filename
end

def files
  @files = []
  raw_files = Dir.entries(@path)
  raw_files.each do |element|
    if element.include?(".mp3") == true
      @files.push(element)
    end
  end
return @files
end

def import
  self.files.each do |filename|
  Song.new_by_filename(filename)
end
end

end
