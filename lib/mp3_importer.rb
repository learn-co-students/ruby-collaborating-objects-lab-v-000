class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.glob("#{self.path}/*.mp3").map do |file|
      files << file.split("mp3s/")
        files.each do |p|
          p.delete_if {|w| w == "./spec/fixtures/"}
        end
    end
    files = files.flatten
    files
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
