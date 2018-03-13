class MP3Importer
  attr_accessor :path

  #pn = Pathname.new("./db/mp3s")

  def initialize(pn)
    @path = pn.to_s
  end

  def files
    Dir.entries(@path).reject{|x| x=="." || x==".."}.collect {|x| x}
  end

  def import
    files.each do |x|
      Song.new_by_filename(x)
    end
  end

end
