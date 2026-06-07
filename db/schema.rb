ActiveRecord::Schema[8.1].define(version: 2026_06_07_121844) do
  create_table "books", force: :cascade do |t|
    #カラム
    t.string "title" 
    t.string "body"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
