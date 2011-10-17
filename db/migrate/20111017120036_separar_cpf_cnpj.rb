class SepararCpfCnpj < ActiveRecord::Migration
  def change
  		rename_column :fornecedores, :cnpf_cpf, :cnpj
  		add_column :fornecedores, :cpf, :string
  		add_column :fornecedores, :pj, :boolean
  end
end
