insert into sihab.candidate_cadastre_activities(id, cadastre_id, cadastre_mirror_id, activity_type_id, user_id, 
						justify, created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, cadastre_mirror_id, activity_status_id, 
                        staff_id, observation, created_at, updated_at from
                       extranet.candidate_cadastre_activities')
      AS candidate_cadastre_activities(id integer, cadastre_id integer, cadastre_mirror_id integer, activity_status_id integer, staff_id integer, 
			               observation text, created_at timestamp, updated_at timestamp)

