#!/usr/bin/env ruby
# This accepts one argument its passed to a regular expression
# The regular expression = given cases

puts ARGV[0].scan(/hb?tn/).join
