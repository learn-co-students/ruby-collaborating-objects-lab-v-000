class MP3Importer
  attr_reader :path

  def initialize(db_path)
    @path = db_path
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |file|
      file[/#{Regexp.escape(@path)}\/(.*)/, 1]
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
