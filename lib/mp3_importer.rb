class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path

  end

  def files
    file_array = (Dir.glob("#{@path}/*").collect {|file| File.basename("#{file}")})
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end



end
