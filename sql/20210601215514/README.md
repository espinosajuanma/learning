# Use `CASE WHEN` to make a condition in a SUM or AVG function

`CASE WHEN` was really useful to set a value with a condition on a SUM
or AVG function.

```sql
SELECT t.name,
  AVG(CASE WHEN m.visitor_team = t.name THEN m.visitor_points ELSE 0 END) +
  AVG(CASE WHEN m.local_team = m.name THEN m.local_points ELSE 0 END) AS total_average
FROM matches m JOIN teams t ON t.name = m.local_team OR t.team = m.visitor_team WHERE t.division = 'pacific' GROUP BY t.name;
```
