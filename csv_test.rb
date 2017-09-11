require "minitest/autorun"
require "minitest/pride"
#require "webmock/minitest"

require_relative 'zip_download'
# require_relative 'unzip_file'

class ZipDownloadTest < Minitest::Test
    def test_is_file_downloaded
        assert File.exist?("/home/vinu/ruby/top")," ZipFile doesn't exist "
end
end

class UnzipFileTest < Minitest::Test
    def test_is_file_unzipped
        assert File.exist?("/home/vinu/ruby/top-1m.csv"),"Csv doesn't exist "
end
end