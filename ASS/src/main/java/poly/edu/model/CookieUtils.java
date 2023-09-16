package poly.edu.model;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
public class CookieUtils {
   
	// Tạo và gửi cookie về client để lưu
	public static Cookie add(String name, String value, int hours,
	HttpServletResponse resp) {
	Cookie cookie = new Cookie(name, value);
	cookie.setMaxAge(hours*60*60);
	cookie.setPath("/");
	resp.addCookie(cookie);
	return cookie;
	}
	// Đọc giá trị cookie gửi từ client
	public static String get(String name, HttpServletRequest req) {
	Cookie[] cookies = req.getCookies();
	if(cookies != null) {
	for(Cookie cookie: cookies) {
	if(cookie.getName().equalsIgnoreCase(name)) {
	return cookie.getValue();
	}
	}
	}
	return "";
	}
}
