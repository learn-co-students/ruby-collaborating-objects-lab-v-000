class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files #get a list of files in a directory by creating songs from filename
    file = Dir.entries(path).select {|file| file[/\mp3$/]}
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end


end
