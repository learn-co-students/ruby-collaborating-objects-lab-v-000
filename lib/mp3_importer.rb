class MP3Importer

attr_reader :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files ||= Dir["#{path}/*.mp3"].map{ |file| file.gsub("#{path}/", "") }
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
