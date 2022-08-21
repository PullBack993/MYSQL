USE camp;
SELECT starting_point AS router_starting_point,
       end_point      AS route_ending_point,
       leader_id,
       CONCAT(first_name, ' ', last_name)
FROM routes AS r
         JOIN campers c on c.id = r.leader_id