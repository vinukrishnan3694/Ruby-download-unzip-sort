
require 'csv'
require 'rubygems'
require 'zip'
require 'net/http'

class FileDownload
  def zip_download(url,sitename)
    Net::HTTP.start(sitename) { |http|    
    content = http.get(url)   
    File.open("top", "w") { |file|    
    file.write(content.body)
  }
}
puts"File Downloaded"
end 
end


