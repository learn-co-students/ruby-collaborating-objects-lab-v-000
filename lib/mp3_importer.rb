class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path

  end

  def files
     file_array = (Dir.glob("#{@path}/*").collect {|file| File.basename("#{file}")})
  end

  def import
      files.each{|filename| Song.new_by_filename(filename)}
  end
end
