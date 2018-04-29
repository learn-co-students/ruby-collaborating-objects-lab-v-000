require 'pry'

class MP3Importer

  def initialize(mp3_files)
    @mp3_files = mp3_files
  end

  def path
    test_music_path = "./spec/fixtures/mp3s"
  end

  def files
    @file_names = Dir.entries(self.path).select {|file| file.include? "mp3"}
    @file_names
  end


  def import
    self.files.each do |file_name|
      song_instance = Song.new_by_filename(file_name)
      song_instance
    end
  end

end
