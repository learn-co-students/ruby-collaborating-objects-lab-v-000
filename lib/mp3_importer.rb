class MP3Importer
   attr_accessor :path

   def initialize(path)
      @path = path
   end

   def files
      Dir.chdir(@path) do |_path|
         Dir.glob('*.mp3')
      end
   end

   def import
      file_array = files
      file_array.each do |file_name|
         Song.new_by_filename(file_name)
      end
   end
end
