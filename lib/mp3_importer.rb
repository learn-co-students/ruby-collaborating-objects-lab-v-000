class MP3Importer

  attr_accessor :path
  attr_reader :files

  def initialize(file_dir)
    self.path = file_dir
    @files = Dir.entries(file_dir).select { |file| file =~ /.+\.mp3\Z/  }
  end

  def import
    @files.each { |file| Song.new_by_filename(file)}
  end
  
end