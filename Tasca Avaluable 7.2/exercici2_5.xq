let $mitjana := avg(collection("Adames")//salari)
for $empleat in collection("Adames")//empleat
where $empleat/salari > $mitjana
order by $empleat/salari descending
return (
  $empleat/nom/text(),
  $empleat/llinatges/text(),
  $empleat/salari/text()
)