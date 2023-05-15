class AddEstadoToOficina < ActiveRecord::Migration[7.0]
  def change
    add_reference :oficinas, :estado, null: false, foreign_key: true
  end
end
