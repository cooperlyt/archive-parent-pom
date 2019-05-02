package cc.coopersoft.archives.business;

import cc.coopersoft.comm.JsonReturnHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Import;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import java.util.List;

@SpringCloudApplication
@EnableEurekaClient
@EnableResourceServer
//@Import(value = {ApplicationConfigurer.class})
public class Application  {



    public static void main(String[] args){
        SpringApplication.run(Application.class,args);
    }
}
