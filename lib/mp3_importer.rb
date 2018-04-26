class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files

  end


  def import(filename)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
