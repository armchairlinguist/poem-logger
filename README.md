Logs human and computer poems pulled from http://botpoet.com/ to Papertrail (or syslog destination of choice) for fun and profit.

To use:

Set `LOG_HOST` and `LOG_PORT` variables in the shell to the syslog destination of choice. I'm obviously a partisan of [Papertrail](https://github.com/papertrail).
Run: `$ ruby poem_logger.rb`

Tested with Ruby 2.2 on MacOS X. Probably best with Ruby 2.0 and up, as many things are.

Be nice and don't hammer BotPoet with requests. They're a fun site and a handy place to find sort-of-sensical poetry.