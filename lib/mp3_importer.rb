class MP3Importer
  attr_accessor :filenames, :path

def initialize(path)
  @path = path
  @filenames = []
end

def files
  Dir.entries(path).each do |filename|
    @filenames << "#{filename}"
  end
    @filenames.delete_if {|x| x == "." || x == ".."}
end

end
