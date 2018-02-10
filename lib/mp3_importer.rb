class MP3Importer
  attr_accessor :path

  def initialization(path)
    @path = path
  end

  def files(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end


  def import
  end
end
