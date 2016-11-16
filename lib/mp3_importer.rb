class MP3Importer

  attr_reader :files, :path

  def initialize(path)
    @path = path
    @files = Dir.glob("./spec/fixtures/mp3s/*.mp3").collect { |file| File.basename(file) }
  end

  def import
    @files.each { |file| song = Song.new_by_filename(file) }
  end

end
