# Use `SET @` to save a value into a variable

Save a value into a variable with `SET @variable := (QUERY_HERE)`

```sql
SET @code_asus := (SELECT code FROM brands WHERE name = 'Asus');

SELECT * FROM products WHERE price < (SELECT AVG(p.price) FROM products p WHERE p.brand_code = @code_asus) AND brand_code = @code_asus;
```
