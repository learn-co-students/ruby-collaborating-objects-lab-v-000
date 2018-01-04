class MP3Importer
  def initialize
    # path = however you point it to the files, need to Google it
  end

  def files
  end

  def import(file)
    Song.new_by_filename(file)
  end

end
