class MP3Importer

  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = Dir["#{filepath}/*"]
  end

  def files
    #puts "files = #{@files}"
    @files.collect do |filepath|
      path = filepath.split("/")
      #puts "path = #{path} | size = #{path.size} || final = #{path[path.size-1]}"
      path[path.size-1]
    end
  end

  def import
    @files.each{ |filename| Song.new_by_filename(filename) }
  end

end


## REFERENCED Labs
## oo-email-parser-v-000

##REFERENCED OUTSOURCING
## https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby
