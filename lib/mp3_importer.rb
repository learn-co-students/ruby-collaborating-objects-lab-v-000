class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    #@files = Dir["db/mp3s/*.mp3"].collect {|file| file }
    @files = Dir.glob(@path + "/*.mp3") #loads file names, only mp3s
    #@files.collect!{|i| File.basename(i, ".*")} #formats file names, removes directories and any file extension (with ".*")
    @files.collect!{ |i| File.basename(i) }
  end

  def import
    #Song.new_by_filename(filename-goes-here)
    files.each { |i| Song.new_by_filename(i) }
  end
  
end