class AddUserToTodoList < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :user, :string
  end
end
