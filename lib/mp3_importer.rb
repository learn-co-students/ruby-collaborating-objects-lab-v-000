class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @list_of_files ||= Dir.glob("#{path}/*.mp3").collect{ |files|
      files.gsub("#{path}/", "")
    }
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end


end
