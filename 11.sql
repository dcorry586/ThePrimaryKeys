USE ThePrimaryKeys_DylanC;

-- See a client who has the lowest value of projects
select min(value) as `Lowest Project Value`, client_id as `Client`, name as `Name` from project;