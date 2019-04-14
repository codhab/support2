insert into sihab.candidate_cadastre_indications(id, cadastre_id, enterprise_id, status, 
					         inactived_at, user_id, cadastre_answer, cadastre_answered_at, 
					         justify,created_at, updated_at)

SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select id, cadastre_id, enterprise_id, inactive, inactive_date, staff_id, accepted,
		       accepted_date, observation, created_at, updated_at  from
                       extranet.candidate_enterprise_cadastres')
      AS candidate_enterprise_cadastres(id integer, cadastre_id integer, enterprise_id integer, inactive boolean, inactive_date timestamp, 
                                        staff_id integer, accepted boolean, accepted_date timestamp, observation text, created_at timestamp, updated_at timestamp)



