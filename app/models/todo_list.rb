class TodoList < ApplicationRecord
  CATEGORY =['Private','School','Family','Work']
  PRIORITY = [['High',{:style => "background-color: Red"}],'Medium','Low']
end
