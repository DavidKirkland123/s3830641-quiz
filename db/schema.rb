# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_17_160041) do

  create_table "answers", force: :cascade do |t|
    t.string "answer_a"
    t.string "answer_b"
    t.string "answer_c"
    t.string "answer_d"
    t.string "answer_e"
    t.string "answer_f"
    t.integer "quizquestion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "correct_answers", force: :cascade do |t|
    t.boolean "answer_a_correct"
    t.boolean "answer_b_correct"
    t.boolean "answer_c_correct"
    t.boolean "answer_d_correct"
    t.boolean "answer_e_correct"
    t.boolean "answer_f_correct"
    t.integer "quizquestion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quizquestions", force: :cascade do |t|
    t.integer "quizquestion_id"
    t.string "question"
    t.string "description"
    t.boolean "multiple_correct_answers"
    t.string "correct_answer"
    t.string "explanation"
    t.string "tip"
    t.string "category"
    t.string "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "quizquestion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end