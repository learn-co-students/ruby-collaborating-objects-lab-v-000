class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir.glob(path + "/*.mp3")
    @files = @files.map do |file|
      file.gsub("./spec/fixtures/mp3s/", "")
    end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end

end