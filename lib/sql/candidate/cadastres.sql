insert into sihab.candidate_cadastres(id, name, cpf, gender_id, born, rg, rg_org, 
                  place_birth, arrival_df, telephone, telephone_optional, 
                  celphone, email, special_condition_type_id,
                  cep, city_id, state_id, address, address_complement, 
                  family_income, personal_income, work_employment, nis, cid, mother_name, 
                  civil_state_id, program_id, sub_program_id, password, nationality, wedding_regime, 
                  wedding_date, admission_date, avatar, additional_score, father_name, deceased, created_at, updated_at)
SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, name, cpf, gender, born, rg, rg_org, place_birth, 
                              arrival_df, telephone, telephone_optional, celphone, email, special_condition_type_id, 
                              cep, city_id, state_id, address, address_complement, income, 
			      main_income, employment , nis, cid, mother_name, civil_state_id, program_id,
			      sub_program_id, password, nationality, wedding_regime, wedding_date,
			      admission_date, avatar, scoring, father_name, defunct, created_at, updated_at
                       from extranet.candidate_cadastres')
      AS cadastres(id integer, name varchar, cpf varchar, gender integer, born date, rg varchar, rg_org varchar, place_birth varchar, 
				 arrival_df date, telephone varchar, telephone_optional varchar, celphone varchar, email varchar, special_condition_type_id integer, 
				 cep varchar, city_id integer, state_id integer, address varchar, address_complement varchar, income decimal, 
				 main_income decimal, employment varchar, nis varchar, cid varchar, mother_name varchar, civil_state_id integer, program_id integer,
				 sub_program_id integer, password varchar, nationality varchar, wedding_regime varchar, wedding_date date,
				 admission_date date, avatar varchar, scoring boolean, father_name varchar, defunct boolean, 
				 created_at timestamp, updated_at timestamp)
