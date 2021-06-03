/*
1. What grades are stored in the database?

Select * from Grade;

--------------------------------------
2. What emotions may be associated with a poem?

Select * from Emotion;

--------------------------------------
3. How many poems are in the database?

Select count(p.title) '# of poems'
from Poem p;

--------------------------------------
4. Sort authors alphabetically by name. What are the names of the top 76 authors?

Select top 76 a.Name, a.Id
from Author a
Order by Name

--------------------------------------
5. Starting with the above query, add the grade of each of the authors.

Select top 76 a.Name, a.Id
from Author a
left join Grade g on g.id = a.GradeId
Order by a.Name

--------------------------------------
6. Starting with the above query, add the recorded gender of each of the authors.

Select top 76  a.Name, a.Id, g.Name
from Author a
left join Grade g on g.id = a.GradeId
left join Gender f on f.id = a.GenderId
Order by a.Name

--------------------------------------
7. What is the total number of words in all poems in the database?

Select sum(p.WordCount) '# of words'
from Poem p;

--------------------------------------
8. Which poem has the fewest characters?

Select top 1 p.Title, p.CharCount
From Poem p
Order by p.CharCount

--------------------------------------
9. How many authors are in the third grade?

Select count(a.Name) '# of 3rd poets'
From Author a
left join Grade g on g.id = a.GradeId
where g.Name = '3rd Grade'

--------------------------------------
10. How many total authors are in the first through third grades?

Select count(a.Name) '# of 1st-3rd poets'
From Author a
left join Grade g on g.id = a.GradeId
where g.Name = '1st Grade' OR g.Name = '2nd Grade' OR g.Name = '3rd Grade'

--------------------------------------
11. What is the total number of poems written by fourth graders?

Select count(p.Title) '# of poems by 4th graders'
From Author a
left join Grade g on g.id = a.GradeId
left join Poem p on p.AuthorId = a.Id
where g.Name = '4th Grade'

--------------------------------------
12. How many poems are there per grade?
*/