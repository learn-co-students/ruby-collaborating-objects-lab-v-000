class MP3Importer
  attr_accessor :path, :artist

  def initialize(path)
    @path = path
  end

  def files
    all_files = []
    Dir.entries(@path).each do |entry|
      if File.fnmatch('**.mp3', entry)
        all_files << entry
      end
    end
    all_files
  end

  def import
    all_files = self.files
  #  binding.pry
    all_files.each do |file|
      Song.new_by_filename(file)
    end
    binding.pry
  end

end
