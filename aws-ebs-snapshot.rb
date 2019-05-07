#!/usr/bin/env ruby

require 'rubygems'
require 'commander'

class MyApplication
  include Commander::Methods
  # include whatever modules you need

  def run
    program :name, 'aws-ebs-snap'
    program :version, '0.0.1'
    program :description, 'Creates a snapshot of your EBS volume via create-snapshot'

    command :ebslists do |c|
      c.syntax = 'aws-ebs-snap ebslists [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Aws-ebs-snap::Commands::Ebs-lists
      end
    end

    run!
  end
end

MyApplication.new.run if $0 == __FILE__
