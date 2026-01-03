package com.starttohkar.service;

import com.starttohkar.entity.Seat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OptimisticSeatBookingTestService {

    @Autowired
    private MovieTicketBookingService movieTicketBookingService;

    public void testOptimisticLocking(Long seatId) throws InterruptedException {
        // 2 thread

        Thread t1 = new Thread(() ->{
            try{
                System.out.println(Thread.currentThread().getName() + " is attempting to book the seat");
                Seat seat = movieTicketBookingService.bookSeatWithOptimistic(seatId);
                System.out.println(Thread.currentThread().getName() + " successfully booked the seat with version " + seat.getVersion());
            }catch (Exception e){
                System.out.println(Thread.currentThread().getName() + " failed : " + e.getMessage());
            }
        });

        Thread t2 = new Thread(() ->{
            try{
                System.out.println(Thread.currentThread().getName() + " is attempting to book the seat");
                Seat seat = movieTicketBookingService.bookSeatWithOptimistic(seatId);
                System.out.println(Thread.currentThread().getName() + " successfully booked the seat with version " + seat.getVersion());
            }catch (Exception e){
                System.out.println(Thread.currentThread().getName() + " failed : " + e.getMessage());
            }
        });

        t1.start();
        t2.start();
        t1.join();
        t2.join();
    }
}
