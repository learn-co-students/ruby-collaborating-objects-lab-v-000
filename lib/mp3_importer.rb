class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # not my code for this method!
    @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
