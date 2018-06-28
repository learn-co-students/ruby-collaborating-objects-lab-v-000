class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    @filenames = Dir["#{@path}/*.mp3"].map! {|file| file[@path.length+1..-1]}
  end
  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end
end



# for testing
#dir = MP3Importer.new('./db/mp3s').import
#puts dir
