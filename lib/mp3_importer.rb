class MP3Importer
  attr_accessor :path

  def import
    files.each{ |file| Song.new_by_filename(file) }
  end

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(path).select {|file| file[/\mp3$/]}
  end

end
