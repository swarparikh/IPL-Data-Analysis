select * from dbo.ipl_details
select * from dbo.ipl_matches_details

/* Question-1:*/

--List out players with most man of the match?


select player_of_match,count(*) as topplayer 
from ipl_matches_details
group by player_of_match 
order by count(*) 
desc;


/* Question-2:*/

--Find out the number of matches each team has won so far?


select winning_team, count(*) as win from ipl_matches_details
group by winning_team 
order by count(*)
desc ;

/* Question-3:*/

-- List out all the ground with total number of matches played each of them?

select venue,count(*) as total_matches_held 
from ipl_matches_details
group by venue 
order by count(*) desc;

/* Question-4:*/

--List out top umpires who have stood the most umpire 1 ?

SELECT umpire1, COUNT(*) AS ump_1
FROM ipl_matches_details
GROUP BY umpire1
ORDER BY ump_1 DESC;

/* Question-5:*/

--List out top umpires who have stood the most umpire 2 ?

select umpire2,count(*) as upm2 
from ipl_matches_details
group by umpire2 
order by count(*) desc ;

/* Question-6:*/

--Find out all the team names who have won matches with more than 50 matches?

select 
winning_team, count(*) as won
from ipl_matches_details
group by winning_team
having count(*) >50;