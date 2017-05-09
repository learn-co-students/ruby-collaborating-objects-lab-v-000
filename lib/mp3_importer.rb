class MP3Importer
  attr_accessor :path, :artist

  def initialize(path)
    @path = path
  end

  def files
    all = []
    Dir.entries(@path).each do |entry|  
      if File.fnmatch('**.mp3', entry)
        all << entry
      end
    end    
    all
  end

  def import
    all_files = self.files
    all_files.each do |file|
      new = Song.new_by_filename(file)
    end
  end

end