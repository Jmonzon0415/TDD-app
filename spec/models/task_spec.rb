# require 'rails_helper'

# RSpec.describe Task, type: :model do
# describe '#toggle_complete!' do 
#   it 'should make a task complete that is incomplete' do 
#     task = Task.create(complete: false)
#     task.toggle_complete!
#     expect(task.complete).to eq(true)
#   end 
#  end
# describe '#toggle_favorite!' do 
#   it 'should make a task that is a favorite to not a favorite' do 
#     task = Task.create(favorite: true)
#     task.toggle_favorite!
#     expect(task.favorite).to eq(false)
#   end
#   end  
# describe '#increment_priority!' do 
#   it 'should add 1 to the priority' do
#     task = Task.create(priority: 1)
#     task.increment_priority!
#     expect(task.priority).to eq(2)
#   end
# end 
# describe '#decrement_priority!' do 
#   it 'should subtract 1 to the priority' do
#     task = Task.create(priority: 5)
#     task.decrement_priority!
#     expect(task.priority).to eq(4)
#   end
# end
# describe '#overdue?' do 
#   it 'should is the time is greater than the deadline' do 
#     task = Task.create(deadline: 1.day.ago)
#     task.overdue?
#     expect(task.overdue?).to eq(true)
#   end
# end 
# describe '#snooze_hour!' do 
#   it 'should increment the deadline by one  hour' do
#     time = Time.now
#     task = Task.create(deadline: time)
#     task.snooze_hour!
#     expect(task.deadline).to eq(Time.now + 1.hour)
#   end 
# end


# end 



