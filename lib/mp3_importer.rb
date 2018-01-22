class MP3Importer

  attr_accessor :path, :files
  attr_reader :filename

  def initialize(path)
    @path= path
    @files = files
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").map{|file| file.gsub("#{path}/", "")}

  end



  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end


end
