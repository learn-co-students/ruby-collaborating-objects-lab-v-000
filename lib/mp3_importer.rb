class MP3Importer

  @@files = []

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir[@path + "/**/*.mp3"]
    files.map! {|file| file.gsub(@path + "/","")}
    files.each {|file| @@files << file}
  end

  def import
    @@files.each {|file| Song.new_by_filename(file)}
  end

end
