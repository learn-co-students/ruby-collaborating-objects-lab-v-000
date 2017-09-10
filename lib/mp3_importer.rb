class MP3Importer

attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files = Dir["#{self.path}/*.mp3"]
    files.collect!{|name| name.split("/")[4]}
  end


  def import
    files.each {|file| Song.new_by_filename(file)}

  end
end
