package com.example.demoms.web;

import java.time.LocalDateTime;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping
public class HomeController {
    
    @GetMapping("/now")
    public ResponseEntity<?> now() {
        log.info("call ms : {}", LocalDateTime.now());
        return ResponseEntity.ok().body(LocalDateTime.now());
    }
}
