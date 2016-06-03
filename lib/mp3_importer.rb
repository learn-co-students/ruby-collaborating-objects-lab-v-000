class MP3Importer

  attr_accessor :path 

  @@all_pre = [] 
  @@all = []
  @@files = []
  def initialize(path)
    @path = path
    @@files << Dir.entries(path).select {|el| el.include?("mp3")}
  end



  def files
    @@files.each do |file_arr|
      file_arr.each do |file_el|
        @@all_pre << file_el unless @@all.include?(file_el)
      end
    end
    @@all_pre.uniq!.compact 
  end

  def  import 
    @@all_pre.each do |filename|
     Song.new_by_filename(filename)
    end
  end





end