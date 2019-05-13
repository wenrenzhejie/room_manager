package com.it666.room_manager.validatecode.result;

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import cn.dsna.util.images.ValidateCode;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import org.hibernate.Session;

public class CodeResult implements Result{
	private int width = 120;//验证码宽
	private int height = 80;//验证码高
	private int codeCount = 4;//验证码字符数
	private int lineCount = 100;//干扰线条数

	/*
	 * 为每个属性添加set方法，以方便可以在struts.xml中的Action > result 下，使用param标签注入值
	 */
	public void setWidth(int width) {
		this.width = width;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public void setCodeCount(int codeCount) {
		this.codeCount = codeCount;
	}

	public void setLineCount(int lineCount) {
		this.lineCount = lineCount;
	}

	/**
	 * 重写父类的方法，以向页面输出验证码
	 */
	@Override
	public void execute(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		//借用第三方工具包ValidateCode.jar生成验证码
		ValidateCode vc = new ValidateCode(width, height, codeCount, lineCount);
		BufferedImage bi = vc.getBuffImg();
		System.out.println(vc.getCode());
		ActionContext.getContext().getSession().put("verifyCode",vc.getCode());
		//得到响应并输出
		HttpServletResponse response = ServletActionContext.getResponse();
		ImageIO.write(bi, "jpeg", response.getOutputStream());
	}
}
