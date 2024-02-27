#!/usr/bin/env ruby
# This accepts one argument its passed to a regular expression
# The regular expression = School

puts ARGV[0].scan(/School/).join
