class MP3Importer

  attr_accessor :files, :path

  def initialize(file_path)
     self.path = file_path
     self.files = Dir.entries(self.path).select {|file| file.include?("mp3") }
   end

   def import
     self.files.each do |filename|
       Song.new_by_filename(filename)
     end
   end

 end
