#!/usr/bin/env ruby
# suite.rb -- spreadsheet -- 22.12.2011 -- jsaak@napalm.hu
require 'rubygems'
require 'bundler'
require 'find'
require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

$VERBOSE = true

here = File.dirname(__FILE__)

$LOAD_PATH << here

Find.find(here) do |file|
  next if File.basename(file) == 'suite.rb'
  if file =~ /\.rb$/o
    require file[here.size+1..-1]
  end
end
