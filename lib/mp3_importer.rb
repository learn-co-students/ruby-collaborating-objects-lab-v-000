class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    @files ||= Dir["#{path}/*.mp3"].collect {|file| file.gsub("#{path}/", "") }
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

  def self.new_by_filename(filename)
    song= Song.new(filename)
    song.save
    song
  end
end