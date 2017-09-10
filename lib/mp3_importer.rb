require 'pry'

class MP3Importer

  def initialize(file_path)
    @file_path = file_path
    # @@mp3_array = []
    # @path = file_path
    # @@mp3_array = Dir["#{@path}/*.mp3"]
  end

  def path
    @file_path
  end

  def files
    file_array = []
    Dir.foreach(@file_path) { |x|
      if x.include?(".mp3")
         file_array << x
       end  }

    file_array
  end

  def import
    files.each do |file|
        binding.pry
      Song.new_by_filename(file)
    end
  end

  # def size=(value)
  #   @value = value
  # end
  #
  # def size
  #   @value
  # end

end
