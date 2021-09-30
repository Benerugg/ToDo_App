class AddPriorityToTodoList < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :priority, :string
  end
end
