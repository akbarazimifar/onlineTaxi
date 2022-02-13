package cn.dunkwan.onlinetaxi.eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class OnlineTaxiEurekaApplication {

    public static void main(String[] args) {
        SpringApplication.run(OnlineTaxiEurekaApplication.class, args);
    }

}
