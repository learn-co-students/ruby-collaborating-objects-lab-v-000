class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(path) do |file_name|
      if file_name.split('.')[1] == 'mp3'
        @files << file_name
      end
    end
    @files
  end

  def import
    files.collect do |file|
      Song.new_by_filename(file)
    end
  end
end
