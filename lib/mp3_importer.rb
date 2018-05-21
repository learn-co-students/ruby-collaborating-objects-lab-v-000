class MP3Importer
  attr_accessor :path

  def initialize(file)
    @path = file
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
    @all_files = @files.collect { |file| file.split("/")[4] }
  end

  def import
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end
end
