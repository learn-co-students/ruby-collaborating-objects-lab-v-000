class MP3Importer
  def initialize
    # path = however you point it to the files, need to Google it
  end

  def files
  end

  def import(list_of_filenames)
      list_of_filenames.each { |filename| Song.new_by_filename(filename) }
  end

end
