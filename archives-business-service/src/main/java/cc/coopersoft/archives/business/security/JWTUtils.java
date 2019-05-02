package cc.coopersoft.archives.business.security;

import cc.coopersoft.archives.business.config.ServiceConfig;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Service
public class JWTUtils {

    @Autowired
    private ServiceConfig serviceConfig;

    private Claims getClaims(HttpServletRequest request) throws UnsupportedEncodingException {
        String token = request.getHeader("Authorization").replace("Bearer ","");
        return Jwts.parser().setSigningKey(serviceConfig.getJwtSigningKey().getBytes("UTF-8")).parseClaimsJws(token).getBody();

    }

    public String getUserName(HttpServletRequest request){
        try {
            return (String) getClaims(request).get("name");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }


}
