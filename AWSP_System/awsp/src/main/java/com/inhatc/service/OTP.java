package com.inhatc.service;

import java.security.MessageDigest;

public class OTP {
	
	int cnt=0;
    String h;
    String OTP;
	
	public static String transOTP(String input) {
	    try {
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	            //SHA-256 방식 암호화 클래스 변수 digest 선언.
		byte[] hash = digest.digest(input.getBytes("UTF-8"));//문자열 바이트로 digest 갱신 후 해시계산값 반환.
		StringBuffer hexString = new StringBuffer();//16진수 문자열로 변환하기위한 변수 선언.
		for (int i = 0; i < hash.length; i++) { //hash 배열 크기많큼 반복
		    String hex = Integer.toHexString(0xff & hash[i]);//각배열값을 16진수로 변환.
		    if (hex.length() == 1) // 변환된 값이 1이라면 0을 더한다.
			hexString.append('0');
		    hexString.append(hex);//변환된 값 hex를 hexString에 더한다.
		}
		return hexString.toString();//모든변환이 끝난후 변환된 값 반환.
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public void makeOTP() { // n번의 해시를 위한 메서드
        h=transOTP("qhrdmaqkq123"+cnt);//cnt : 해시하는 수 .즉 n이다.
        cnt++;
        while(true) {
        	h=transOTP(h+cnt); // 우선 난수 대신 n값을 같이 해쉬.
        	System.out.println(cnt+"\t"+h);
        	if(h.substring(0, 4).equals("0000")) { //사용자 고유키값이 나올 때 까지 반복.
        		OTP=h;// 검증할 OTP 변수에 값을 넣고 탈출.
        		break;
        	}
        cnt++;//아니라면 횟수 ++
        }
    //System.out.println(cnt);

	}
	
	public void OTP()
    {
        
        h=transOTP("wlsfkaus48"+cnt);
        int i;
        for(i=1;i<42456;i++){
            h=transOTP(h+i);
        }
        System.out.println(i);
        i--;
        String hash=transOTP("ffae49f3ca913fb26c15056da1dd164f127e86fb6a0a13d31cc9a5bb33552e77"+"42456");
        System.out.println("0000b51cfe7d9ee5e872df9a56eb41879517ec6ba82c1d2e66f9647e9043e105");
        //hash=applySha256(hash+i);
        System.out.println(hash);
        
    }
	
	public int parseHex(String a){
        char[] temp=a.toCharArray();
        int ret=0;
        int hex=161616;
        for(int i=0;i<a.length();i++){
            hex++;
            //for(int j=0;j<i;j++){
            //    hex*=16;
            //}
            switch(a.charAt(i)){
                case '1':
                    ret+=hex*1;
                    System.out.println(ret);
                    break;
                case '2':
                    ret+=hex*2;
                    System.out.println(ret);
                    break;
                case '3':
                    ret+=hex*3;
                    System.out.println(ret);
                    break;
                case '4':
                    ret+=hex*4;
                    System.out.println(ret);
                    break;
                case '5':
                    ret+=hex*5;
                    System.out.println(ret);
                    break;
                case '6':
                    ret+=hex*6;
                    System.out.println(ret);
                    break;
                case '7':
                    ret+=hex*7;
                    System.out.println(ret);
                    break;
                case '8':
                    ret+=hex*8;
                    System.out.println(ret);
                    break;
                case '9':
                    ret+=hex*9;
                    System.out.println(ret);
                    break;
                case 'a':
                    ret+=hex*10;
                    System.out.println(ret);
                    break;
                case 'b':
                    ret+=hex*11;
                    System.out.println(ret);
                    break;
                case 'c':
                    ret+=hex*12;
                    break;
                case 'd':
                    ret+=hex*13;
                    break;
                case 'e':
                    ret+=hex*14;
                    break;
                case 'f':
                    ret+=hex*15;
                    break;
            }
        }
        
        
        return ret;
    }
	
	
}
