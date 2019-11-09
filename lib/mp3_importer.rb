class MP3Importer
  attr_reader :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files

    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    #binding.pry
    files.each{|f| Song.new_by_filename(f)}
    #binding.pry
  end

end
