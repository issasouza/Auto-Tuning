<h1>Auto Tuning</h1>

rails new AutoTuning

rails db:create

rails g scaffold Oficina cliente:string endereco:string telefone:integer dataEntrada:date dataSaida:date valorServico:float concluido:boolean

rake db:migrate

rails s


rails g scaffold Servico descricao:string

rails g scaffold Estado descricao:string

rails g scaffold Veiculo descricao:string 

rails g scaffold Marca descricao:string


rake db:migrate


rails g migration AddServicoToOficina servico:references


rails g migration AddEstadoToOficina estado:references


rails g migration AddVeiculoToOficina veiculo:references


rails g migration AddMarcaToOficina marca:references


rake db:migrate


class Oficina < ApplicationRecord
  belongs_to :estado
  belongs_to :servico
  belongs_to :veiculo
  belongs_to :marca
end


