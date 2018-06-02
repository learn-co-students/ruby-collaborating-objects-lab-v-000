class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    all_files = []

    Dir.entries(@path).each do |file|
      if file.split(".").include?("mp3")
        all_files << file
      end
    end
    all_files
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
