class TodoList < ApplicationRecord
  validates :title, presence: true
  CATEGORY =['Private','School','Family','Work']
  PRIORITY = [['High',{:style => "background-color: Red"}],'Medium','Low']
end
