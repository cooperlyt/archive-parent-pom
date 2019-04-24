package cc.coopersoft.construct.corp;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

@SpringCloudApplication
@EnableEurekaClient
@EnableResourceServer
public class JoinCorpApplication {

    public static void main(String[] args){
            SpringApplication.run(JoinCorpApplication.class,args);
    }
}
