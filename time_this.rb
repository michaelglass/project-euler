START_TIME = Time.now
at_exit {puts "Done in #{Time.now - START_TIME} seconds."}