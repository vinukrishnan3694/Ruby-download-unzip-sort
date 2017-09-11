require 'csv'
require 'rubygems'
require 'zip'
require 'net/http'



class ZipDownload
  def zip_download
    Net::HTTP.start("s3.amazonaws.com") { |http|    
    content = http.get("http://s3.amazonaws.com/alexa-static/top-1m.csv.zip")   
    File.open("top", "w") { |file|    
    file.write(content.body)
  }
}
puts"Zip File Downloaded"
end 
end

@download=ZipDownload.new
@download.zip_download()


