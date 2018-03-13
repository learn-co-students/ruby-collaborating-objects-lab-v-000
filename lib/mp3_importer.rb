class MP3Importer
attr_accessor :path, :files

  def initialize(path)
   @path = path
  end

  def files
    @files = []
    all_files = Dir.entries(@path)
    all_files.each do |file|
      if file.include?(".mp3")
         @files << file
      end
    end
    @files
  end

  def import
    all_files = self.files
    all_files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
