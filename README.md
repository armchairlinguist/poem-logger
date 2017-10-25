Logs human and computer poems pulled from http://botpoet.com/ to your syslog destination of choice, or to STDOUT, for fun and profit.

To use with a syslog destination:

* Set `LOG_HOST` and `LOG_PORT` variables in the shell to the syslog destination of choice. I'm partial to [Papertrail](https://github.com/papertrail).
* Run: `$ ruby poem_logger.rb`

To use in the terminal: don't set the environment variables, or pipe the output to something that returns `false` to `isatty`, like `grep`, `xargs` or another Ruby script.

Tested with Ruby 2.2 on MacOS X. Probably best with Ruby 2.0 and up, as many things are.

Be nice and don't hammer BotPoet with requests. They're a fun site and a handy place to find sort-of-sensical poetry.
