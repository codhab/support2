insert into sihab.candidate_cadastre_mirrors(id, cadastre_id, name, cpf, gender_id, born, rg, 
					       rg_org, place_birth, arrival_df, telephone, telephone_optional, 
					       celphone, email, special_condition_type_id, 
					       adapted_property, cep, city_id, state_id, address, address_complement, 
					       family_income, personal_income, work_employment, nis, cid, mother_name, civil_state_id, 
					       program_id, created_at, updated_at)
SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, name, cpf, gender, born, rg, rg_org, place_birth, 
                              arrival_df, telephone, telephone_optional, celphone, email, special_condition_id,
			      adapted_property, cep, city_id, state_id, address, address_complement, income,
			      main_income, employment, nis, cid, mother_name, civil_state_id, program_id, 
			      created_at, updated_at                     
                              from extranet.candidate_cadastre_mirrors')
      AS candidate_cadastre_mirrors(id integer, cadastre_id integer, name varchar, cpf varchar, gender integer, born date, rg varchar, rg_org varchar, place_birth varchar, 
                                    arrival_df date, telephone varchar, telephone_optional varchar, celphone varchar, email varchar, special_condition_id integer,
			            adapted_property boolean, cep varchar, city_id integer, state_id integer, address varchar, address_complement varchar, income decimal,
			            main_income decimal, employment varchar, nis varchar, cid varchar, mother_name varchar, civil_state_id integer, program_id integer,
                                    created_at timestamp, updated_at timestamp)
