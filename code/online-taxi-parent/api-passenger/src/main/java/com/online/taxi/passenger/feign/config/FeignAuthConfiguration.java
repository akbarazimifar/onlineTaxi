package com.online.taxi.passenger.feign.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.online.taxi.passenger.annotation.ExcludeFeignConfig;
import feign.auth.BasicAuthRequestInterceptor;

@ExcludeFeignConfig
public class FeignAuthConfiguration {
	
	@Bean
	public BasicAuthRequestInterceptor basicAuthRequestInterceptor() {
		return new BasicAuthRequestInterceptor("root", "root");
	}
}