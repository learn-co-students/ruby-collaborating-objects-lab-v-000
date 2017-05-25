class MP3Importer

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

  def initialize(file_path)
    @file_path = file_path
  end  

end 