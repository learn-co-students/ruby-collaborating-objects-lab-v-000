class MP3Importer

  attr_accessor :path, :files

  def initialize(files)
    self.path = files
  end

  def files
    file_names = []
    files = Dir["#{self.path}/**/*.mp3"]
    files.each {|file| file_names << file.split(/mp3s\/(.+.mp3)\z/)[1]}
    file_names
  end

  def import
    imported_names = []
    self.files.each do |file|
      imported_names << Song.new_by_filename(file)
    end
    imported_names
  end
  
end
