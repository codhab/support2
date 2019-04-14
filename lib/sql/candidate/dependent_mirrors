insert into sihab.candidate_dependent_mirrors(id, cadastre_id, cadastre_mirror_id, dependent_id, name, cpf, rg, rg_org, born, gender_id, 
				       place_birth, civil_state_id, income, kinship_id, special_condition, 
				       special_condition_type_id, cid, nis, employment,  
				       admission_date, created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, cadastre_mirror_id, dependent_id, name, cpf, rg, rg_org, born, gender,
		       place_birth, civil_state_id, income, kinship_id, special_condition_flag,
		       special_condition_type_id, cid, nis, employment,  admission_date,
		       created_at, updated_at  from
                       extranet.candidate_dependent_mirrors')
      AS candidate_dependent_mirrors(id integer, cadastre_id integer, cadastre_mirror_id integer, dependent_id integer,name varchar, cpf varchar, rg varchar, rg_org varchar, born date, gender integer,
		       place_birth varchar, civil_state_id integer, income decimal, kinship_id integer, special_condition_flag boolean,
		       special_condition_type_id integer, cid varchar, nis varchar, employment varchar, admission_date date,
		       created_at timestamp, updated_at timestamp)
