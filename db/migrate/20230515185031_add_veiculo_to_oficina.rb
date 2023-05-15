class AddVeiculoToOficina < ActiveRecord::Migration[7.0]
  def change
    add_reference :oficinas, :veiculo, null: false, foreign_key: true
  end
end
