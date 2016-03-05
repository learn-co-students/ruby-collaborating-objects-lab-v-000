class MP3Importer
  attr_accessor :songs, :path
  @@files = [] 
  def initialize(path)
    @path = path
  end
  def files
    Dir.foreach(@path) do |file|
      if file != "." && file !=".."
        @@files << file
      end
    end
    @@files
  end

  
  def import
  end

      
    # Dir.foreach(path) {|file|  if file != "." || ".." new_array << file}

end