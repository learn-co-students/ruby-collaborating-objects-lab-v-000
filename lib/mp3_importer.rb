class MP3Importer
attr_reader :path, :files

def initialize (path)
  @path = path
end

def files
  @files = Dir.glob("#{@path}/*.mp3").collect {|song| song.gsub("./spec/fixtures/mp3s/","")}
end

def import
  self.files.each do |file_name|
    song = Song.new_by_filename(file_name)
  end
end

end
