class MP3Importer

  attr_accessor :songs

  def initialize
  end

  def files
  end
 
  def import(list_of_filenames)
    list_of_filenames.each{|file_name| songs << Song.new_by_filename(file_name)}
  end

end