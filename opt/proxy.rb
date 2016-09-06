require 'webrick'
require 'webrick/httpproxy'

proxy = WEBrick::HTTPProxyServer.new Port: ENV['PORT'].to_i

trap 'INT'  do proxy.shutdown end
trap 'TERM' do proxy.shutdown end

proxy.start
