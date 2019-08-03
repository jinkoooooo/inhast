package com.inhatc.service;

import java.security.MessageDigest;

public class OTP {
	
	int cnt=0;
    String h;
    String OTP;
	
	public static String transOTP(String input) {
	    try {
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	            //SHA-256 ��� ��ȣȭ Ŭ���� ���� digest ����.
		byte[] hash = digest.digest(input.getBytes("UTF-8"));//���ڿ� ����Ʈ�� digest ���� �� �ؽð�갪 ��ȯ.
		StringBuffer hexString = new StringBuffer();//16���� ���ڿ��� ��ȯ�ϱ����� ���� ����.
		for (int i = 0; i < hash.length; i++) { //hash �迭 ũ�⸹ŭ �ݺ�
		    String hex = Integer.toHexString(0xff & hash[i]);//���迭���� 16������ ��ȯ.
		    if (hex.length() == 1) // ��ȯ�� ���� 1�̶�� 0�� ���Ѵ�.
			hexString.append('0');
		    hexString.append(hex);//��ȯ�� �� hex�� hexString�� ���Ѵ�.
		}
		return hexString.toString();//��纯ȯ�� ������ ��ȯ�� �� ��ȯ.
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public void makeOTP() { // n���� �ؽø� ���� �޼���
        h=transOTP("qhrdmaqkq123"+cnt);//cnt : �ؽ��ϴ� �� .�� n�̴�.
        cnt++;
        while(true) {
        	h=transOTP(h+cnt); // �켱 ���� ��� n���� ���� �ؽ�.
        	System.out.println(cnt+"\t"+h);
        	if(h.substring(0, 4).equals("0000")) { //����� ����Ű���� ���� �� ���� �ݺ�.
        		OTP=h;// ������ OTP ������ ���� �ְ� Ż��.
        		break;
        	}
        cnt++;//�ƴ϶�� Ƚ�� ++
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
