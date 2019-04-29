insert into sihab.candidate_cadastre_convocations(id, cadastre_id, convocation_id, status, user_id, 
							created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, convocation_id, status, 
                        staff_id,  created_at, updated_at from
                       extranet.candidate_cadastre_convocations')
      AS candidate_cadastre_convocations(id integer, cadastre_id integer, convocation_id integer, status boolean, staff_id integer, 
			                 created_at timestamp, updated_at timestamp)

