class MP3Importer
  attr_accessor :path

def initialize(file_path)
  @path = file_path
end

def import
  @list_of_filenames = self.files
  @list_of_filenames.each do |filename|
    Song.new_by_filename(filename)
  end
end

def files
  list_of_filenames = Dir["#{@path}/*"]
  list_of_filenames.each do |filename|
    filename.sub!(/^#{@path}\//, '')
  end
  list_of_filenames
end

end
