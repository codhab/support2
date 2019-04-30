with situations as (
	select * from sihab.candidate_cadastre_situations sit
		where sit.id in (select sit2.id from sihab.candidate_cadastre_situations sit2 
					where sit2.cadastre_id = sit.cadastre_id
					order by sit2.date desc limit 1) limit 100),


pontuations as (
		select * from sihab.candidate_cadastre_pontuations pont
		where pont.id in (select pont2.id from sihab.candidate_cadastre_situations pont2 
					where pont2.cadastre_id = pont.cadastre_id
					order by pont2.date desc limit 1)
)

select

	cad.id,
	cad.uuid,
	cad.name,
	cad.cpf,
	cad.born,
	cad.personal_income,
	cad.family_income,
	cad.special_condition,
	special.name

from sihab.candidate_cadastres cad

inner join pontuations pont
on pont.cadastre_id = cad.id 

inner join situations sit
on sit.cadastre_id = cad.id

left join common.special_condition_types special
on special.id = cad.special_condition_type_id

limit 100