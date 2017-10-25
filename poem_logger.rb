require 'HTTParty'
require 'remote_syslog_logger'
require 'logger'
require 'oga'

$stdout.sync = true

response = HTTParty.get('http://botpoet.com/random/vote/')
document = Oga.parse_html(response.body)
poem = document.css('pre.poem').text

if STDOUT.isatty
  logger = RemoteSyslogLogger.new(ENV['LOG_HOST'], ENV['LOG_PORT'], program: 'poem-logger')
else
  logger = Logger.new $stdout
end

# It's not important for poems to tell us when they happened :)
logger.formatter = proc do |severity, datetime, progname, msg|
   "#{msg}\n"
end

logger.info(poem)
