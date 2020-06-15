package com.kropotov.asrd.controllers;

import com.kropotov.asrd.services.email.EmailMessage;
import com.kropotov.asrd.services.email.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashSet;
import java.util.Set;

@Controller
public class MailController {

    private final EmailService emailService;

    @Autowired
    public MailController(EmailService emailService) {
        this.emailService = emailService;
    }

    @ResponseBody
    @GetMapping("/mail")
    public String sendMail() {
        Set<String> emailList = new HashSet<>();
        emailList.add("07011984t@mail.ru");
        EmailMessage emailMessage = EmailMessage.builder().mailSubject("Регистрация аккаунта в АСУП").build();
        emailMessage.setMessageContent("Поздравляю Вы зарегистрированы. Перейдите по ссылке для подтверждения вашей электронной почты. " + "http://localhost:8189/asrd/");
        emailMessage.setMessageFrom("m");
        emailMessage.setRecipients(emailList);
        emailService.sendMessage(emailMessage);
        return "Message send";
    }
}
