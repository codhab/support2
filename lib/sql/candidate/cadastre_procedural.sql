insert into sihab.candidate_cadastre_procedurals(id, cadastre_id, procedural_type_id, user_id, observation, 
						 cadastre_convocation_id, process_number, created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, procedural_status_id, staff_id, observation,
                        cadastre_convocation_id, old_process, created_at, updated_at from
                       extranet.candidate_cadastre_procedurals')
      AS candidate_cadastre_procedurals(id integer, cadastre_id integer, procedural_status_id integer, staff_id integer, observation text, 
			                 cadastre_convocation_id integer, old_process varchar, created_at timestamp, updated_at timestamp)



