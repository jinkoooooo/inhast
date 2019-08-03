package com.inhatc.service;

import java.util.ArrayList;
import java.util.StringTokenizer;



public class BlockTestService {
	String m="wls4210"; //암호화할 문장
	
	//임의의 두 소수
	long p=277;  
	long q=53;
	
	long n=p*q;
	
	long totient=(p-1)*(q-1); //오일러 피함수
	
	long e=public_key(totient); //공개키
	
	long d=private_key(e, totient); //개인키
	
	ArrayList<Double> tmp=encrypt(e,n,m); //암호화 진행
	
	String encrypt_m=doubleToString(this.tmp);//암호화된 문서
	
	
	public static String doubleToString(ArrayList<Double> a) {
		String s="";
		for(int i=0; i<a.size();i++) {
			s+=Double.toString(a.get(i))+",";
		}
		
		return s;
	}
	
	
	
	public static long gcd(long a, long b) { //두 수의 최대 공약수 구하는 함수
		while(b!=0) {
			a=b;
			b=a%b;
		}
		
		return a;
	}
	
	private long private_key(long e, long tot) { //개인키 구하는 함수
		
		long k=1;
		while((e*k)%tot!=1 || k==e) {
			k++;
		}
		return k;
	}

	public static long public_key(long tot) { // 공개키 구하는 함수
		long e=2;
		while (e < tot && gcd(e, tot)!=1){
			e++;
		}
		
		return e;
	}
	
	public static ArrayList<Double> encrypt(long e, long n, String text) { //암호화 함수
		ArrayList<Double> cipher=new ArrayList<Double>();

		
		for(int i=0; i<text.length();i++) {
			cipher.add(Math.pow( (int)text.charAt(i), e)%n);
		}
		
		
		return cipher;
	}
	
	public static String decrypt(long e, long n, String text) {
		
		StringTokenizer st = new StringTokenizer(text,",", false);//문자를 "," 단위로 나눔

		String plain="";
		
		while(st.hasMoreTokens()) {
			plain+=(char)((int)(Math.pow(Double.parseDouble(st.nextToken()), e)%n));
		}
		
		return plain;
		
	}
}
