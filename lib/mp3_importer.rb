class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.{mp3}").map{ |x| x.gsub("#{path}/", "")}
  end

  def import
    files.each do |song_file|
      Song.new_by_filename(song_file)
    end
  end


end
