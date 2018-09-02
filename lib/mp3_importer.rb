require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    globber = self.path + '/*.mp3'
    Dir.glob(globber).each do |mp3_file_path|
      mp3_file = mp3_file_path.split('/')[-1]
      @files << mp3_file
    end
    @files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
