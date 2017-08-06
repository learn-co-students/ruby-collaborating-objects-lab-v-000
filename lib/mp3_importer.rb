require 'pry'

class MP3Importer
	attr_accessor :path

	def initialize(path='./db/mp3s')
		@path = path
	end

	def files
		files_array = Dir.glob("#{@path}/*.mp3")
		filename_array = files_array.collect {|item| File.basename("#{item}")}
	end
	
	def import
		self.files.each do |filename|
			Song.new_by_filename(filename)
			
		end
	end
end


#filename_array = files_array.collect {|item| "#{item}".gsub(/((\.\/.+\/)+)/, "")}