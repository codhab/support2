insert into sihab.candidate_cadastre_devices(user_id, push_id, cadastre_id, created_at, updated_at)
SELECT *
    FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 
                      'select mobile_user_token, mobile_push_token, id, created_at, updated_at
                       from extranet.candidate_cadastres')
      AS cadastres(mobile_user_token varchar, mobile_push_token varchar, id integer, created_at timestamp, updated_at timestamp)
