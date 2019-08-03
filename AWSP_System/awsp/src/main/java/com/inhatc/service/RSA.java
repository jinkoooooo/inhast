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



	  // ����Ű - ����Ű ���� �����ϴ� Ŭ����
	  public KeyPair getKeyPair() throws Exception{
	    // Ű ���� ��� ���� �������� �־� ���� �ٸ� Ű���� ��� ���� �������� �����մϴ�.
	    SecureRandom secureRandom = new SecureRandom();
	    // Ű���� ��� ���� KeyPairGenerator �ν��Ͻ��� �����ɴϴ�.
	    KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
	    // KeyPairGenerator�� �ʱ�ȭ�մϴ�. ���ڴ� ���̿� �������Դϴ�.
	    keyPairGen.initialize(KEY_LENGTH, secureRandom);
	    // Ű ���� ����ϴ�
	    KeyPair keyPair = keyPairGen.genKeyPair();
	    return keyPair;
	  }
	  
	// ���� �޾� ����Ű�� ��ȣȭ�Ͽ� ��ȣ���� �����մϴ�.
	  public String encryptRSA(String plainText, PublicKey publicKey) throws Exception{
	    // ��ȣȭ�� �����ϱ� ���� CipherŬ������ �����ɴϴ�.
	    Cipher cipher = Cipher.getInstance("RSA");
	    // ����Ű�� ��ȣȭ�ϱ� ���� ���ڸ� ������ �־��ݴϴ�.
	    cipher.init(Cipher.ENCRYPT_MODE, publicKey);

	    // ���� �־� ��ȣȭ�� ����Ʈ �迭�� ����ϴ�.
	    byte[] encByte = cipher.doFinal(plainText.getBytes("UTF-8"));
	    // ���ڿ��� �ٲٱ� �� Base64�� ���ڵ�!
	    String result = Base64.getEncoder().encodeToString(encByte);

	    return result;
	  }

	  // ��ȣ���� �޾� ��ȣȭ�� �����Ͽ� ���� �����մϴ�.
	  public String decryptRSA(String encrypted, PrivateKey privateKey) throws Exception{
	    Cipher cipher = Cipher.getInstance("RSA");
	    cipher.init(Cipher.DECRYPT_MODE, privateKey);

	    // ��ȣ���� �޾� Base64�� ���ڵ��Ͽ� �迭�� �ٲߴϴ�.
	    byte[] encByte = Base64.getDecoder().decode(encrypted.getBytes());
	    // ��ȣȭ�Ͽ� ����Ʈ �迭�� ����ϴ�.
	    byte[] decText = cipher.doFinal(encByte);

	    // ���ڿ��� ��ȭ�Ͽ� ��ȯ�մϴ�.
	    String result = new String(decText, "UTF-8");
	    return result;
	  }
	

}
