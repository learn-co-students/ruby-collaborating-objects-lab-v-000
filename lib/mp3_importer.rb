class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  #def files
   # @files = []
    #Dir.foreach(path) {|f| @files << f}
    #@files = @files[2..-1]
    #@files
  #end

  def files 
    Dir.chdir(path) do
    @files=Dir.glob('*.mp3')
    end
  end


  def import
    self.files
    @files.each do |i|
      Song.new_by_filename(i)
    end
  end

end