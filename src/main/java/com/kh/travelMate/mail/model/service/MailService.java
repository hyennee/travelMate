package com.kh.travelMate.mail.model.service;

public interface MailService {
	boolean send(String subject, String text, String form, String to);
}
