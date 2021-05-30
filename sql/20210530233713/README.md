# Use `TRUNCATE()` or `ROUND()` on MySQL

Function ROUND() doesn't need a second argument but you can pass how
many decimal places. If there is no second argument this will be zero.

`SELECT ROUND(price) AS rounded_price FROM product;`

`SELECT ROUND(price, 2) AS rounded_price FROM product;`


With the function TRUNCATE() you need a second argument no matter what.
The second argument as the ROUND() function is the amount of decimal
places.

`SELECT TRUNCATE(price, 0) AS truncate_price FROM product;`

`SELECT TRUNCATE(price, 2) AS truncate_price FROM product;`
