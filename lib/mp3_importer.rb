class MP3Importer
  attr_accessor :path

  #passed a file path upon instantiation
  def initialize(path)
    @path = path
  end

  #parses through the directory provided at instantiation
  #and creates an array of only mp3 files
  def files
    Dir.entries("#{path}").select {|song_filename| song_filename.include?("mp3")}
  end

  #uses the mp3 array created by the files instance method to pass the
  #songs to the Song class' #new_by_filename for creation
  def import
    files.each {|song_filename| Song.new_by_filename(song_filename)}
  end
end
