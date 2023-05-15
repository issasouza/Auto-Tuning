class Oficina < ApplicationRecord
  belongs_to :estado
  belongs_to :servico
  belongs_to :veiculo
  belongs_to :marca
end
