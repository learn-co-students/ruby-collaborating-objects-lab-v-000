class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import(list_files)
    list_files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
