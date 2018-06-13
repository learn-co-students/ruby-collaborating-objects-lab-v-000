class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

  def files
    @filenames = Dir.entries(@path).select{|f| File.file?(@path+"/"+f)}
  end
end
