require 'pry'
class MP3Importer

  def initialize(file_path)
    @path = file_path
  end

  def path
    @path
  end

  def files
    list_of_files = Dir.entries(@path)
    clean_list = list_of_files.select{|x| x.end_with?(".mp3")}
    clean_list
  end

  def import
    list_of_filenames = self.files
    #binding.pry

    list_of_filenames.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
