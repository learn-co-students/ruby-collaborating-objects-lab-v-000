class MP3Importer

attr_accessor :path, :files

def initialize(path)
  @path=path
end

def files
   Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
end

  def import
  files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end



end
