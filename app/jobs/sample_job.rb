class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts ""
    puts ""
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "@@@@@@SampleJob is Started@@@@@@@@@@"
    puts "@@@@@@something job@@@@@@@@@@@@@@@@@"
    puts "@@@@@@SampleJob is done@@@@@@@@@@@@@"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts ""
    puts ""
  end
end
