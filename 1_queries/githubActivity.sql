SELECT name, email, phone
from students
WHERE github IS null AND end_date IS NOT null;