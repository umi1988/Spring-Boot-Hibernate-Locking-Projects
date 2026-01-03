package com.starttohkar.service;

import com.starttohkar.entity.Seat;
import com.starttohkar.repository.SeatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MovieTicketBookingService {

    @Autowired
    private SeatRepository seatRepository;

    @Transactional
    public Seat bookSeat(Long seatId){
        // get the seats by seat id
        Seat seat = seatRepository.findById(seatId)
                .orElseThrow(() -> new RuntimeException("seat not found with id :- " + seatId));

        System.out.println(Thread.currentThread().getName() + " fetched seat with version :- " + seat.getVersion());

        if(seat.isBooked()){
            throw new RuntimeException("Seat already booked");
        }
        // booking seat
        seat.setBooked(true);
        //version check occurs here
        return seatRepository.save(seat);
    }


}
