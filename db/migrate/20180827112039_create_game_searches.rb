class CreateGameSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :game_searches do |t|

      t.timestamps
    end
  end
end
