# `CONCAT()` Function on MySQL

CONCAT() function allows you to concatenate one or more strings.

| name | job       |
|------|-----------|
| anne | developer |
| john | designer  |
| paul | editor    |

```sql
SELECT CONCAT('Name ', name) AS name, CONCAT('Job ', job) AS job FROM
employees
```

Result:

| name      | job           |
|-----------|---------------|
| Name anne | Job developer |
| Name john | Job designer  |
| Name paul | Job editor    |

Without `AS` (Alias) head of table is going to be the CONCAT() function

```sql
SELECT CONCAT('Name ', name), CONCAT('Job ', job) FROM employees
```

Result:

| CONCAT('Name ', name) | CONCAT('Job ', job)       |
|-----------------------|---------------------------|
| Name anne             | Job developer             |
| Name john             | Job designer              |
| Name paul             | Job editor                |


