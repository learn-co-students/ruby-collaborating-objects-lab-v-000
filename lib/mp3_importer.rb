class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(path).each do|entry|
      if entry.include?(".mp3")
        @files << entry
      end
    end
    @files
  end


  def import
    #calling the files method
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end
