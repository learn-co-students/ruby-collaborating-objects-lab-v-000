class MP3Importer

  attr_accessor :path, :songs
  @@songs = []

  def initialize(path)
    self.path = path
  end

  

  def files
    file_array = Dir.glob("#{@path}/*.mp3")
    file_array.collect {|mp3| mp3.gsub("./spec/fixtures/mp3s/", "")}
  end

  def import
    self.files.each {|song| @@songs << Song.new_by_filename(song)}
  end






end
