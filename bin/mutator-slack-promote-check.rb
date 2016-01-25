#!/usr/bin/env ruby

require 'rubygems'
require 'json'

event = JSON.parse(STDIN.read, :symbolize_names => true)

if event[:client][:slack_channel] && event[:check][:slack_channel]
    event[:client].delete(:slack_channel)
end

puts JSON.dump(event)
