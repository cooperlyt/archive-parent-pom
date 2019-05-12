package cc.coopersoft.archives.business.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;

@Configuration
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

    @Override
    public void configure(HttpSecurity http) throws Exception{
        http.authorizeRequests()
//                .regexMatchers("\\/v1\\/business\\/.*").hasRole("GOV")
//                .regexMatchers("\\/v1\\/corp\\/.*").hasRole("CORP")
                .anyRequest().authenticated();
    }

}
