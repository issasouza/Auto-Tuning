class CreateOficinas < ActiveRecord::Migration[7.0]
  def change
    create_table :oficinas do |t|
      t.string :cliente
      t.string :endereco
      t.integer :telefone
      t.date :dataEntrada
      t.date :dataSaida
      t.float :valorServico
      t.boolean :concluido

      t.timestamps
    end
  end
end
