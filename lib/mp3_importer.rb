
class MP3Importer
  attr_accessor :songs, :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{path}/*.mp3"].collect do |file|
      file.gsub(/.+\/mp3s\//, '')
    end
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end