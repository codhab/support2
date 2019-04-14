insert into sihab.candidate_cadastre_inheritors(id, cadastre_id, place_birth, name, cpf, rg, born, civil_state_id, 
						single_name, percentage, observation, estate,created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, place_birth, name, cpf, rg, born,
		       civil_state_id, single_name, percentage, observation, spoil,
		       created_at, updated_at  from
                       extranet.candidate_inheritors')
      AS candidate_inheritors(id integer, cadastre_id integer, place_birth varchar, name varchar, cpf varchar, rg varchar, born date,
		       civil_state_id integer,single_name varchar, percentage numeric, observation text, spoil boolean,
		               created_at timestamp, updated_at timestamp)

