#!/usr/bin/env ruby
# This accepts one argument its passed to a regular expression
# This script output = [SENDER],[RECEIVER],[FLAGS]

puts ARGV[0].scan(/(?<=from:|to:|flags:).+?(?=\])/).join(',')
