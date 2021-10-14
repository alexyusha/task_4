SELECT
  *
FROM group_students
  INNER JOIN student
    ON group_students.id = student.id_group
WHERE EXISTS (SELECT
    marks.id,
    marks.id_students,
    marks.id_course,
    marks.marks
  FROM marks
  WHERE marks.id_students = student.id)
AND NOT EXISTS (SELECT
    marks.id,
    marks.id_students,
    marks.id_course,
    marks.marks
  FROM marks
  WHERE marks.id_students = student.id
  AND marks.marks <> 5)
  

