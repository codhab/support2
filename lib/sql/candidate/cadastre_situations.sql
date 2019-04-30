insert into sihab.candidate_cadastre_situations(id, cadastre_id, cadastre_mirror_id, situation_type_id,  
						user_id, observation, cadastre_convocation_id, 
						created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, cadastre_mirror_id, situation_status_id, staff_id,
                        observation, cadastre_convocation_id, created_at, updated_at from
                       extranet.candidate_cadastre_situations')
      AS candidate_cadastre_situations(id integer, cadastre_id integer, cadastre_mirror_id integer, situation_status_id integer, staff_id integer, 
			               observation text, cadastre_convocation_id integer, created_at timestamp, updated_at timestamp)


