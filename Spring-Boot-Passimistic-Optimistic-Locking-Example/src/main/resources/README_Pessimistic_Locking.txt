
pessimistic locking->


2026-01-03T18:14:07.528+05:30  INFO 52710 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2026-01-03T18:14:07.529+05:30  INFO 52710 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2026-01-03T18:14:07.534+05:30  INFO 52710 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 5 ms
2026-01-03T18:14:07.838+05:30  INFO 52710 --- [Spring-Boot-Optimistic-Locking-Example] [nio-9191-exec-4] o.springdoc.api.AbstractOpenApiResource  : Init duration for springdoc-openapi is: 113 ms
Thread-2 is attempting to fetch the seat
Thread-1 is attempting to fetch the seat
Thread-1 acquired the lock for seat id 2
Thread-1 booking the seat 2
Thread-1 successfully book the seat with ID 2
Thread-2 acquired the lock for seat id 2
Thread-2 failed Seat Id 2 is already booked 
Thread-2 failed : Seat already booked !




