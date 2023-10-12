USE ThePrimaryKeys_DylanC;

-- See a client who has the highest value of projects
select max(value) as `Highest Project Value`, client_id as `Client`, name as `Name` from project group by client_id limit 1;
