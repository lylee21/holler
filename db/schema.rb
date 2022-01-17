ActiveRecord::Schema.define(version: 2022_01_16_171039) do

  create_table "hollers", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
