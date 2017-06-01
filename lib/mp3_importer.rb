class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    mp3 = Dir.entries(path)
    mp3.select { |files| files.include?('mp3')}
  end

  def import
    files.each{ |file| Song.new_by_filename(file)}
  end

end
