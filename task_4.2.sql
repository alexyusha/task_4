SELECT
  student.last_name,
  student.first_name,
  student.id,
  student.id_group,
  course.course_title,
  marks.marks
FROM student
  INNER JOIN marks
    ON student.id = marks.id_students
  INNER JOIN course
    ON course.id = marks.id_course
WHERE course.id = 1
AND marks.marks > 4
ORDER BY student.last_name, student.first_name