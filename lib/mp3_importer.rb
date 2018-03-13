class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3")
    @files.collect! {|file_name| file_name.gsub(/#{path}\//, "")}
    @files
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end
