SELECT * FROM rainfall.`district wise rainfall normal`;
SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY FROM rainfall.`district wise rainfall normal`;
SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY, MAR + APR + MAY FROM rainfall.`district wise rainfall normal`;
SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY, MAR + APR + MAY AS TOTAL FROM rainfall.`district wise rainfall normal`;
SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY, TOTAL FROM rainfall.`district wise rainfall normal`;

select STATE_UT_NAME, DISTRICT, MAR, APR, MAY FROM rainfall.`district wise rainfall normal` WHERE STATE_UT_NAME='ASSAM';

select STATE_UT_NAME, DISTRICT, MAR, APR, MAY FROM rainfall.`district wise rainfall normal` WHERE STATE_UT_NAME='ASSAM' order by DISTRICT asc;

SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY, MAR + APR + MAY AS TOTAL FROM rainfall.`district wise rainfall normal` WHERE STATE_UT_NAME='ASSAM' order by DISTRICT asc;

SELECT STATE_UT_NAME, DISTRICT, MAR, APR, MAY, MAR + APR + MAY AS TOTAL FROM rainfall.`district wise rainfall normal` 
WHERE STATE_UT_NAME='ASSAM' and MAR + APR + MAY>500
order by DISTRICT asc;

select count(STATE_UT_NAME) from  rainfall.`district wise rainfall normal`
WHERE  MAR + APR + MAY>500;

select sum(MAR) from  rainfall.`district wise rainfall normal`;

select STATE_UT_NAME from  rainfall.`district wise rainfall normal` group by STATE_UT_NAME;

CREATE VIEW annual_STATE AS
SELECT STATE_UT_NAME
FROM rainfall.`district wise rainfall normal`
ORDER BY ANNUAL desc;
SELECT * FROM annual_STATE;