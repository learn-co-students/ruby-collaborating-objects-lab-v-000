class MP3Importer
  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    Dir["#{@path}/*"].map {|file_name| file_name.gsub("#{path}/", "")}
  end

  def import
    self.files.collect do |file|
      Song.new_by_filename(file)
    end
  end

end
