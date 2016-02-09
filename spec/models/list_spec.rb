require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do 
  it 'should mark all taks as complete' do 
    list = List.create(name: "groceries")
    ["oranges", "apples"].each do |task_name| 
      Task.create(name: task_name, complete: false, list_id: list.id)
    end 
      list.complete_all_tasks!
      list.tasks.each do |task| 
      expect(task.complete).to eq(true)
      end
    end 
  end 

  describe '#snooze_all_tasks!' do 
    it 'should increment all tasks deadline by 1 hour' do 
     list = List.create(name: "groceries")
    ["oranges", "apples"].each do |task_name| 
      time = Time.now 
      Task.create(name: task_name, complete: false, list_id: list.id, deadline: Time.new(2525,1,1))
    end 
    list.snooze_all_tasks!
    list.tasks.each do |task| 
      list.tasks.each do |task|
        expect(task.deadline).to eq(Time.new(2525,1,1)+ 1.hour)
  end 
  end 
end 
end 

#   describe '#total_duration' do 
#     it 'return sum of all tasks duration' do 
#      list = List.create(name: "stuff_to_do")
#     ["Clean", "Cook"].each do |task_name| 
#       time = Time.now 
#       Task.create(name: task_name, complete: false, list_id: list.id, deadline: 1.hour) 
#     end 
#     list.total_duration 

#     expect(list_id.total_duration).to eq(2.hour)
#   end
# end 



describe '#incomplete_tasks' do
  it 'should return an array of incomplete tasks' do 
    list = List.create(name: "stuff_to_do")
    ["Clean", "Cook"].each do |task_name| 
       time = Time.now 
       Task.create(name: task_name, complete: false, list_id: list.id) 
      end   
  incomplete_tasks_list = [list.tasks[0], list.tasks[1]]
  expect(list.incomplete_tasks).to eq(incomplete_tasks_list)
  end 
end 


describe '#favorite_tasks' do 
  it 'should return an array of favorite tasks' do 
      list = List.create(name: "stuff_to_do")
       ["Clean", "Cook"].each do |task_name| 
          time = Time.now 
          Task.create(name: task_name, favorite: true, list_id: list.id) 
        end   
    favorite_tasks_list = [list.tasks[0], list.tasks[1]]
    expect(list.incomplete_tasks).to eq(favorite_tasks_list)
    end 
end 


end 
