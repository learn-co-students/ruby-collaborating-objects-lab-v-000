class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    Dir.glob("#{path}/*mp3").collect{ |f| f.gsub("#{path}/", "") }.each do |song|
      Song.new_by_filename(song)
    end
  end

end
