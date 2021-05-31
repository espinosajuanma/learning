# Use `IS NULL` to select rows without relation in second table

For example if need to get that factory that doesn't have any product,
use `IS NULL` to check if a product column is empty.

Also use `LEFT JOIN` for relation to get that factories

```sql
SELECT f.name FROM factory f
  LEFT JOIN products p
  ON f.id = p.factory_id
  WHERE p.code IS NULL;
```
