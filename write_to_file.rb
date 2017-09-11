
require 'rubygems'

class WriteToFile
        def write_to_file(content,file_name)
        File.open(filename, 'w') { |file| file.puts(content) }
    end
end