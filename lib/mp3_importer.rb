class MP3Importer
  attr_accessor :path
  attr_accessor :file 

  def initialize(filepath)
    @path = filepath
  end

   def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", '')}
  end

  def import
    self.files
    @files.each{|song| Song.new_by_filename(song)}
  end
  
   








end #<<class