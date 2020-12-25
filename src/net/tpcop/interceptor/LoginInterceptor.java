package net.tpcop.interceptor;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor implements StrutsStatics {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final Log log = LogFactory.getLog(LoginInterceptor.class);

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> session = invocation.getInvocationContext().getSession();

		if (session == null || session.get("EMAIL") == null) {
			return "login";
		} else {
			if (!session.get("EMAIL").toString().equals(null)) {
				return invocation.invoke();
			} else {
				return "login";
			}
		}
	}

	public void init() {
		log.info("Intializing LoginInterceptor");
	}

	public void destroy() {

	}

}
