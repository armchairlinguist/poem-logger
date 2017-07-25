require 'HTTParty'
require 'remote_syslog_logger'
require 'oga'

rs_logger = RemoteSyslogLogger.new(ENV['LOG_HOST'], ENV['LOG_PORT'], program: 'poem-logger')

# It's not important for poems to tell us when they happened :)
rs_logger.formatter = proc do |severity, datetime, progname, msg|
   "#{msg}\n"
end

response = HTTParty.get('http://botpoet.com/random/vote/')
document = Oga.parse_html(response.body)
poem = document.css('pre.poem').text

rs_logger.info(poem)