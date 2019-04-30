namespace :create_view do

  task cadastre_union: :environment do 
    sql = <<-SQL

      CREATE OR REPLACE VIEW sihab.cadastre_union AS
      select cad.id, cad.cpf, cad.name, 'cadastre'  as type_row, cad.deleted  from sihab.candidate_cadastres cad

      union all

      select dep.id, dep.cpf, dep.name, 'dependent' as type_row, dep.deleted from sihab.candidate_dependents dep

      union all

      select inh.id, inh.cpf, inh.name, 'inheritor' as type_row, inh.deleted from sihab.candidate_cadastre_inheritors inh;
    SQL

    ActiveRecord::Base.connection.execute sql

    p 'View :cadastre_union criada'
  end

  task cadastre_with_pontuation: :environment do 
  end

  task cadastre_full_pontuation: :environment do
  end

end