class MP3Importer
  attr_accessor :path, :songs, :import
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select! {|file| file.match(/.mp3\z/)}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end
end