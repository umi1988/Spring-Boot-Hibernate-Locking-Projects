

optimistic locking->

2026-01-03T17:42:59.703+05:30  INFO 51342 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2026-01-03T17:42:59.703+05:30  INFO 51342 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2026-01-03T17:42:59.705+05:30  INFO 51342 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 2 ms
Thread-2 is attempting to book the seat
Thread-1 is attempting to book the seat
Thread-2 fetched seat with version :- 0
Thread-1 fetched seat with version :- 0
Thread-1 successfully booked the seat with version 1
Thread-2 failed : Unexpected row count (expected row count 1 but was 0) [update seat set booked=?,movie_name=?,version=? where id=? and version=?] for entity [com.starttohkar.entity.Seat with id '1']



