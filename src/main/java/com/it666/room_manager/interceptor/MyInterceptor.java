package com.it666.room_manager.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class MyInterceptor extends MethodFilterInterceptor {
    @Override
    protected String doIntercept(ActionInvocation invocation) throws Exception {
        Object userName = ActionContext.getContext().getSession().get("userName");
        if(userName != null){
            return invocation.invoke();
        }
        return null;
    }
}
