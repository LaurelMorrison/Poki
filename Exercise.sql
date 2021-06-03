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

Select a.Name, a.Id
from Author a
Where a.id <= 76
Order by Name

--------------------------------------
5. Starting with the above query, add the grade of each of the authors.

Select a.Name, a.Id, g.Name
from Author a
left join Grade g on g.id = a.GradeId
Where a.id <= 76
Order by a.Name

--------------------------------------
6. Starting with the above query, add the recorded gender of each of the authors.
*/
