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

ActiveRecord::Schema[7.0].define(version: 2023_05_15_185031) do
  create_table "estados", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oficinas", force: :cascade do |t|
    t.string "cliente"
    t.string "endereco"
    t.integer "telefone"
    t.date "dataEntrada"
    t.date "dataSaida"
    t.float "valorServico"
    t.boolean "concluido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "servico_id", null: false
    t.integer "estado_id", null: false
    t.integer "veiculo_id", null: false
    t.index ["estado_id"], name: "index_oficinas_on_estado_id"
    t.index ["servico_id"], name: "index_oficinas_on_servico_id"
    t.index ["veiculo_id"], name: "index_oficinas_on_veiculo_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "oficinas", "estados"
  add_foreign_key "oficinas", "servicos"
  add_foreign_key "oficinas", "veiculos"
end
