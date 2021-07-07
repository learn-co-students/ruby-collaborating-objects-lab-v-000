class MP3Importer
  attr_accessor :path, :files

  def initialize(files)
    self.path = files # set file path
  end

  def files
    file_names = Array.new # create new array for all file names
    files = Dir["#{self.path}/**/*.mp3"]
    files.each {|file| file_names << file.split(/mp3s\/(.+.mp3)\z/)[1]} # I hate regex with a passion. I found compiled this from a few different stack threads and I'm still not sure how it works.
    file_names  # return file_names
  end

  def import
    imported = Array.new # create new array for imported songs
    self.files.each do |file|  # loop through all files to add them to imported array
      imported << Song.new_by_filename(file)
    end
    imported  # return imported array
  end
end
