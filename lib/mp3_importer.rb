class MP3Importer

  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
#    list_of_files = Dir.entries(@path).map {|f| f[0, f.length-4]}.compact
    @files = Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
  
  
      # Artist.class_variable_set("@@all",[])
      # test_music_path = "./spec/fixtures/mp3s"
      # music_importer = MP3Importer.new(test_music_path)
      # music_importer.import


