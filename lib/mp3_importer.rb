class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
     mp3arr = []
     files = Dir.entries(path).select {|f| !File.directory? f}
     files.each do |file|
       if file.match(/.mp3\z/)
         mp3arr << file
       end
    end
  end

  def import
    files.each do |file|
      Artist.all << Song.new_by_filename(file)
    end
  end

end
