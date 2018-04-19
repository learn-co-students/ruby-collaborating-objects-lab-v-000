class MP3Importer
  attr_accessor :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def path
    @file_path
  end



  def files
    @files = []

    Dir["#{@file_path}/*"].each do |file|
      file_name = file.split("mp3s/")[1]
      @files << file_name
    end

    @files
  end

  def import
    filenames = self.files
    filenames.each{|file| Song.new_by_filename(file)}
  end
end
