class AddTextsearchableIndexColToTask < ActiveRecord::Migration[8.1]
  def change
    change_table(:tasks) do |t|
      t.virtual :textsearchable_index_col, type: :tsvector,
                as: "to_tsvector('english', body || ' ')",
                stored: true
    end

    add_index :tasks, :textsearchable_index_col, using: :gin, name: "tasks_idx"
  end
end
