use project;
select  *from big;
SELECT `Country`, AVG(`Money Laundering Risk Score`) AS avg_risk #Avg risk per country
FROM big
GROUP BY `Country`;

SELECT `Country`, AVG(`Money Laundering Risk Score`) AS avg_risk#Highest risk country
FROM big
GROUP BY `Country`
ORDER BY avg_risk DESC
LIMIT 1;

SELECT `Transaction Type`, AVG(`Money Laundering Risk Score`) AS avg_risk#Avg risk per transaction type
FROM big
GROUP BY `Transaction Type`;

SELECT `Transaction Type`, AVG(`Money Laundering Risk Score`) AS avg_risk #Most risky transaction type
FROM big
GROUP BY `Transaction Type`
ORDER BY avg_risk DESC
LIMIT 1;

SELECT `Shell Companies Involved`, AVG(`Money Laundering Risk Score`) AS avg_risk #Risk vs shell companies
FROM big
GROUP BY `Shell Companies Involved`;

SELECT YEAR(STR_TO_DATE(`Date of Transaction`, '%Y-%m-%d')) AS year,#Risk by year
AVG(`Money Laundering Risk Score`) AS avg_risk
FROM big
GROUP BY year
ORDER BY year;

SELECT * FROM big #Top 10 risky transactions
ORDER BY `Money Laundering Risk Score` DESC
LIMIT 10;

SELECT `Country`, COUNT(*) AS total_transactions#Avg amount per type
FROM big
GROUP BY `Country`;

SELECT * FROM big WHERE `Money Laundering Risk Score` > 8 #Risk > 8