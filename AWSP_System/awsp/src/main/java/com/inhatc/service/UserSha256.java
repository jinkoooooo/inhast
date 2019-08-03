package com.inhatc.service;

import java.security.MessageDigest;

public class UserSha256 {
	public static String encrypt(String planText) { //암호화 함수
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256"); //SHA-256 방식 .
			md.update(planText.getBytes());// 입력한 비밀번호를 Byte 별로 md 에 넣음
			byte byteData[] = md.digest(); //
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
}