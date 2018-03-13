class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    files = []
  end

  def import
    files.each { |f|
      Song.new_by_filename(f)
    }
  end

  def files
    #files = Dir["#{@path}/*.mp3"].collect{|n| n.gsub("#{@path}/","").slice(0,n.length - 4)}
    files = Dir["#{@path}/*.mp3"].collect{|n| n.gsub("#{@path}/","")}
  end
end
