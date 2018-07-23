1.)
SELECT *
FROM survey
LIMIT 10;

2.)
SELECT question, COUNT(DISTINCT user_id)
FROM survey
GROUP BY question;



3.)
	Questions:		
1. "What are you looking for?" 		
2. "What's your fit?"			
3. "Which shapes do you like?" 

5. "When was your last eye exam?"	




SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;



5.) 
SELECT DISTINCT q.user_id, 
h.user_id IS NOT NULL AS 'is_home_try_on',    h.number_of_pairs, 
p.user_id IS NOT NULL as 'is_purchase'
FROM quiz AS q
LEFT JOIN home_try_on AS h 
    ON q.user_id = h.user_id
LEFT JOIN purchase AS p 
    ON p.user_id = q.user_id
LIMIT 10;

