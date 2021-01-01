require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

# s.every '30s' do
#   Empire.all.each do |empire|
#     empire.credits += 5
#     empire.industry += 2
#     empire.research += 2
#     empire.save
#   end
# end