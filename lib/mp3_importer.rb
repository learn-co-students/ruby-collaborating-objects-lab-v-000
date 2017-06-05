class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
    @all_files = Dir.entries(@path).delete_if {|file| file.include?(".mp3") == false}
    @all_files.each do |file|
      File.basename(file)
    end
    @all_files
  end



def import
  files
  @all_files.each {|filename| Song.new_by_filename(filename)}
end

end
