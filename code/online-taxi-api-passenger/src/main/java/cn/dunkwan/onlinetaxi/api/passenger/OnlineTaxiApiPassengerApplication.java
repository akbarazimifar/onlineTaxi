package cn.dunkwan.onlinetaxi.api.passenger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableEurekaClient
@RestController
public class OnlineTaxiApiPassengerApplication {

    public static void main(String[] args) {
        SpringApplication.run(OnlineTaxiApiPassengerApplication.class, args);
    }

    @GetMapping
    public String test() {
        return "api-passenger";
    }
}
