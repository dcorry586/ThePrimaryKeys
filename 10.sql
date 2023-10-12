USE ThePrimaryKeys_DylanC;

-- See a client who has the highest value of projects
select max(value) as `Highest Project Value`, client_id as `Client`, name as `Name` from project group by client_id limit 1;

-- I don't think this query works as intended. you'll need to do a sum 
-- of all values per client_id. 
-- can you also update the query to show the client name

-- see client 
select sum(value) as `Total value of client projects`, client.client_id as `Client ID`, client.name
from project 
RIGHT JOIN client ON project.client_id = client.client_id
group by client.client_id 
ORDER BY value DESC limit 1;
