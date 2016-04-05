class MP3Importer
	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		a = []
		files = Dir.glob(@path + "/*.mp3")
		files.each do |i| 
			i.split("/").each do |j|
				if j.include?(".mp3")
					a << j
				end
			end
		end
		return a

	end

	def import
		self.files.each do |i|
		song = Song.new_by_filename(i)
		end
	end


end
