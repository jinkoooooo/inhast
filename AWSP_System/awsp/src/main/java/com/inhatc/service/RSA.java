package com.inhatc.service;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.Base64;

import javax.crypto.Cipher;

import org.springframework.stereotype.Service;

import com.inhatc.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class RSA {
	private static final int KEY_LENGTH = 1024;



	  // 개인키 - 공개키 쌍을 생성하는 클래스
	  public KeyPair getKeyPair() throws Exception{
	    // 키 쌍을 얻기 전에 랜덤값을 주어 각기 다른 키쌍을 얻기 위해 랜덤값을 생성합니다.
	    SecureRandom secureRandom = new SecureRandom();
	    // 키값을 얻기 위해 KeyPairGenerator 인스턴스를 가져옵니다.
	    KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
	    // KeyPairGenerator를 초기화합니다. 인자는 길이와 랜덤값입니다.
	    keyPairGen.initialize(KEY_LENGTH, secureRandom);
	    // 키 쌍을 얻습니다
	    KeyPair keyPair = keyPairGen.genKeyPair();
	    return keyPair;
	  }
	  
	// 평문을 받아 공개키로 암호화하여 암호문을 리턴합니다.
	  public String encryptRSA(String plainText, PublicKey publicKey) throws Exception{
	    // 암호화를 수행하기 위해 Cipher클래스를 가져옵니다.
	    Cipher cipher = Cipher.getInstance("RSA");
	    // 공개키로 암호화하기 위해 인자를 적절히 넣어줍니다.
	    cipher.init(Cipher.ENCRYPT_MODE, publicKey);

	    // 평문을 넣어 암호화된 바이트 배열을 얻습니다.
	    byte[] encByte = cipher.doFinal(plainText.getBytes("UTF-8"));
	    // 문자열로 바꾸기 전 Base64로 인코딩!
	    String result = Base64.getEncoder().encodeToString(encByte);

	    return result;
	  }

	  // 암호문을 받아 복호화를 수행하여 평문을 리턴합니다.
	  public String decryptRSA(String encrypted, PrivateKey privateKey) throws Exception{
	    Cipher cipher = Cipher.getInstance("RSA");
	    cipher.init(Cipher.DECRYPT_MODE, privateKey);

	    // 암호문을 받아 Base64로 디코딩하여 배열로 바꿉니다.
	    byte[] encByte = Base64.getDecoder().decode(encrypted.getBytes());
	    // 복호화하여 바이트 배열을 얻습니다.
	    byte[] decText = cipher.doFinal(encByte);

	    // 문자열로 변화하여 반환합니다.
	    String result = new String(decText, "UTF-8");
	    return result;
	  }
	

}
