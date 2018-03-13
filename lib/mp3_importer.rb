class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_arr = Dir.entries(path)
    files_arr.reject {|file| !(file.include?('.mp3'))}
  end

  def import
    files_arr = self.files
    files_arr.each {|filename| Song.new_by_filename(filename)}
  end
end