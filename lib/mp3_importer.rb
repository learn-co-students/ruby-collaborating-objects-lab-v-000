class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select do |file_list|
      !File.directory? file_list
    end
  end

  def import
    self.files.each do|filename|  
      song = Song.new_by_filename(filename)
      Artist.all << song.artist.name
      Artist.all.uniq!
    end
 end

end