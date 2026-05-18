let $mitjana := avg(collection("Adames")//salari)
return round-half-to-even ($mitjana,2)