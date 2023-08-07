SELECT DISTINCT BARRIO FROM tabla_de_clientes;
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;


SELECT DISTINCT BARRIO,NOMBRE,'cliente' AS TIPO  FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO,NOMBRE, 'VENDEDOR' AS TIPO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO,NOMBRE,'cliente' AS TIPO_CLIENTE  FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO,NOMBRE, 'VENDEDOR' AS TIPO_VENDEDOR FROM tabla_de_vendedores;


SELECT DISTINCT BARRIO,NOMBRE,'cliente' AS TIPO_CLIENTE,DNI  FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO,NOMBRE, 'VENDEDOR' AS TIPO_VENDEDOR,MATRICULA FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE,tabla_de_clientes.CIUDAD,tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE,tabla_de_clientes.CIUDAD,tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;







