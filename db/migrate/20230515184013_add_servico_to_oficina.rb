class AddServicoToOficina < ActiveRecord::Migration[7.0]
  def change
    add_reference :oficinas, :servico, null: false, foreign_key: true
  end
end
