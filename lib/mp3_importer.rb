class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    file_path_names = Dir.glob("#{path}/*mp3")
    clean_file_names = []
    file_path_names.each do |file_path_name|
      clean_file_names << File.basename("#{file_path_name}")
    end
    clean_file_names
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end
