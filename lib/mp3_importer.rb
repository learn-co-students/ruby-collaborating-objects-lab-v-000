class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files

  end
  def import(list)
    list.each{|file_name| Song.new_by_filename(file_name)}
  end

end