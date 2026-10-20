SELECT
  p.page_id
FROM pages as P
 LEFT JOIN page_likes AS pl
 on p.page_id = pl.page_id
 where pl.liked_date is NULL
 order by p.page_id ASC
