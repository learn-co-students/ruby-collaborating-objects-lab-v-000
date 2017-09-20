class MP3Importer
    attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3")
    @files.collect {|song| song.gsub("#{path}/","")}
  end



  def import
      files.each {|file_name|
    Song.new_by_filename(file_name)}
  end

  end
