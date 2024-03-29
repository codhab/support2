insert into sihab.candidate_cadastre_pontuations(id, cadastre_id, cadastre_mirror_id, pontuation_type_id, bsb, dependent, timelist, 
						 special_condition, income, total, program_id, situation_type_id,created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, cadastre_mirror_id, code, bsb, dependent, timelist,
		       special_condition, income, total, program_id, situation_status_id,
		       created_at, updated_at  from
                       extranet.candidate_pontuations')
      AS candidate_pontuations(id integer, cadastre_id integer, cadastre_mirror_id integer, 
				code integer, bsb decimal, dependent decimal, timelist decimal,
		                special_condition decimal, income decimal, total decimal, program_id integer, situation_status_id integer,
		               created_at timestamp, updated_at timestamp)



