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

Select count(p.Title) '# of poems by grade', g.name
From Author a
left join Grade g on g.id = a.GradeId
left join Poem p on p.AuthorId = a.Id
Group by g.name

--------------------------------------
13. How many authors are in each grade? (Order your results by grade starting with 1st Grade)

Select count(a.Name) '# of poets by grade', g.name
From Author a
left join Grade g on g.id = a.GradeId
Group by g.name
order by g.name;

--------------------------------------
14. What is the title of the poem that has the most words?

Select top 1 p.Title, p.WordCount
From Poem p
Order by p.WordCount DESC;

--------------------------------------
15. Which author(s) have the most poems? (Remember authors can have the same name.)

Select top 1 count(p.AuthorId) '# of poem', a.Name
From Author a
left join Poem p on p.AuthorId = a.Id
Group by p.AuthorId, a.Name
order by count(p.AuthorId) Desc

--------------------------------------
16. How many poems have an emotion of sadness?
Select count(p.id) 'sad poem count'
From Poem p
left join PoemEmotion pe on pe.PoemId = p.id
left join Emotion e on e.id = pe.EmotionId
where e.Name = 'sadness'

--------------------------------------
17. How many poems are not associated with any emotion?

Select count(p.id) 'poems with no emotions'
From Poem p
left join PoemEmotion pe on pe.PoemId = p.id
where pe.id IS NULL

--------------------------------------
18. Which emotion is associated with the least number of poems?

Select top 1 e.Name, Count(pe.EmotionId) 'emotion count'
From PoemEmotion pe
left join Emotion e on e.id = pe.EmotionId
Group by pe.EmotionId, e.Name
order by count(pe.EmotionId)

--------------------------------------
19. Which grade has the largest number of poems with an emotion of joy?
*/