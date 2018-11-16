class MP3Importer

attr_accessor :path

def initialize(path)
 @path = path
end

def files
 Dir.glob(*argument of pattern here to find MP3 file) {block here is to execute on files returned by glob}
end

def import

end


end
