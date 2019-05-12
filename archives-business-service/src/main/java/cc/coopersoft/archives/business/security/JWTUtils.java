package cc.coopersoft.archives.business.security;

import cc.coopersoft.archives.business.config.ServiceConfig;
import cc.coopersoft.construct.data.UserToken;
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

    public String getOrgId(HttpServletRequest request){
        try {
            return (String) getClaims(request).get("org");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public UserToken getUserToke(HttpServletRequest request){
        UserToken result = new UserToken();
        try {
            Claims claims = getClaims(request);
            result.setUserId((String) claims.get("user_name"));
            result.setUserName((String) claims.get("name"));
            result.setOrgId((String) claims.get("org"));
            result.setOrgName((String) claims.get("orgName"));
            return result;
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }


}
