package com.inhatc.service;

import java.util.ArrayList;
import java.util.StringTokenizer;



public class BlockTestService {
	String m="wls4210"; //��ȣȭ�� ����
	
	//������ �� �Ҽ�
	long p=277;  
	long q=53;
	
	long n=p*q;
	
	long totient=(p-1)*(q-1); //���Ϸ� ���Լ�
	
	long e=public_key(totient); //����Ű
	
	long d=private_key(e, totient); //����Ű
	
	ArrayList<Double> tmp=encrypt(e,n,m); //��ȣȭ ����
	
	String encrypt_m=doubleToString(this.tmp);//��ȣȭ�� ����
	
	
	public static String doubleToString(ArrayList<Double> a) {
		String s="";
		for(int i=0; i<a.size();i++) {
			s+=Double.toString(a.get(i))+",";
		}
		
		return s;
	}
	
	
	
	public static long gcd(long a, long b) { //�� ���� �ִ� ����� ���ϴ� �Լ�
		while(b!=0) {
			a=b;
			b=a%b;
		}
		
		return a;
	}
	
	private long private_key(long e, long tot) { //����Ű ���ϴ� �Լ�
		
		long k=1;
		while((e*k)%tot!=1 || k==e) {
			k++;
		}
		return k;
	}

	public static long public_key(long tot) { // ����Ű ���ϴ� �Լ�
		long e=2;
		while (e < tot && gcd(e, tot)!=1){
			e++;
		}
		
		return e;
	}
	
	public static ArrayList<Double> encrypt(long e, long n, String text) { //��ȣȭ �Լ�
		ArrayList<Double> cipher=new ArrayList<Double>();

		
		for(int i=0; i<text.length();i++) {
			cipher.add(Math.pow( (int)text.charAt(i), e)%n);
		}
		
		
		return cipher;
	}
	
	public static String decrypt(long e, long n, String text) {
		
		StringTokenizer st = new StringTokenizer(text,",", false);//���ڸ� "," ������ ����

		String plain="";
		
		while(st.hasMoreTokens()) {
			plain+=(char)((int)(Math.pow(Double.parseDouble(st.nextToken()), e)%n));
		}
		
		return plain;
		
	}
}
