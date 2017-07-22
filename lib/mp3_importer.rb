class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    files = []
    Dir.new(@path).each_with_index do |file_name, index|
      files << file_name if index > 1
    end
    files
  end

  def import
    file_list = files
    file_list.each do |file|
      Song.new_by_filename(file)
    end
      # require 'pry'
      # binding.pry
  end
end
