class MP3Importer
# MP3Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select do
      |file_list| !File.directory? file_list
    end
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
