class CreateAdvancedSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :advanced_searches do |t|

      t.timestamps
    end
  end
end
