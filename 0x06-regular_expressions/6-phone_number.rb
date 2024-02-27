#!/usr/bin/env ruby
# This accepts one argument its passed to a regular expression
# The regular expression = 10 digit phone number

puts ARGV[0].scan(/^\d{10}$/).join
