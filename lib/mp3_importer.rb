class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(path)
    files.select { |file| file.include?('mp3') }
  end

  def import
    file = files.collect do |filename|
      filename.split(" - ")
    Song.new_by_filename(filename)
    end
  end

end
