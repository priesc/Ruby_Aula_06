class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :cnpf_cpf

      t.timestamps
    end
  end
end
