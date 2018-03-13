class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).grep(/.mp3/)
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
   end
  end

end # <-- End MP3 Importer Class