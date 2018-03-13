# mp3_importer.rb

class MP3Importer

  attr_accessor :path, :files

  def initialize(music_path)
    @path = music_path
    @files = self.set_files
  end

  def set_files
    Dir.entries(self.path).select {|filename| filename.include?(".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
