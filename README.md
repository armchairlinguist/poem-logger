Logs human and computer poems pulled from http://botpoet.com/ to your syslog destination of choice, or to STDOUT, for fun and profit.

**Update 2021-04-09**: I learned that BotPoet.com no longer exists 😢. I'll update this when I get a chance, otherwise substitute your favorite silly text generator.

To use with a syslog destination:

* Set `LOG_HOST` and `LOG_PORT` variables in the shell to the syslog destination of choice. I'm partial to [Papertrail](https://github.com/papertrail).
* Run: `$ ruby poem_logger.rb`

To use in the terminal: don't set the environment variables.

Tested with Ruby 2.2 on MacOS X. Probably best with Ruby 2.0 and up, as many things are.

Be nice and don't hammer BotPoet with requests. They're a fun site and a handy place to find sort-of-sensical poetry.
