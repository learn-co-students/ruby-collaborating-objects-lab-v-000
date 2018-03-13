class MP3Importer
  attr_accessor :path

  @@files

  def initialize(path)
    @path = path
  end

  def files

    @@files = Dir.entries(@path)
    @@files.select! {|file| file.match(/\A.*\.mp3\z/)}

  end

  def import
    @@files.each {|file| Song.new_by_filename(file)}
  end
end