class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files = Dir.entries(self.path)
    mp3_files = files.select { |file| file.match(/mp3/) }
  end

  def import
    mp3_files = self.files

    mp3_files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
