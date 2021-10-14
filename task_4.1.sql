SELECT
  COUNT(marks.id_students) AS count_student,
  MAX(teacher.id) AS teacher_id
FROM course
  LEFT OUTER JOIN marks
    ON course.id = marks.id_course
  INNER JOIN teacher
    ON teacher.id = course.id
GROUP BY teacher.id
HAVING count_student > 2000