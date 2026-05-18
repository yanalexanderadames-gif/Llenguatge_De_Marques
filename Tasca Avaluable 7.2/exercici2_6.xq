(
concat("/Adames/administracio.xml: ",
count(db:get("Adames","administracio")//empleat)),

concat("/Adames/projectes.xml: ",
count(db:get("Adames","projectes")//empleat)),

concat("/Adames/vendes.xml: ",
count(db:get("Adames","vendes")//empleat))
)