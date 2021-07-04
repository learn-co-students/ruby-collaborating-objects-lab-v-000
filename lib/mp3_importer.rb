class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    mp3_files = Dir.entries(path)
    mp3_files.select { |file| file.include?('mp3')}
  end

  def import
    file = files.collect do |filename|
      filename.split(" - ")
    Song.new_by_filename(filename)
    end
  end

end
