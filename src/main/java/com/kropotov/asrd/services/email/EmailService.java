package com.kropotov.asrd.services.email;

import com.kropotov.asrd.exceptions.EmailException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService implements MessageService<EmailMessage> {

    private final JavaMailSender mailSender;

    @Override
    public void sendMessage(EmailMessage emailMessage) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
            mimeMessageHelper.setSubject(emailMessage.getMailSubject());
            mimeMessageHelper.setFrom(emailMessage.getMessageFrom());
            mimeMessageHelper.setTo(emailMessage.getMessageTo());
            mimeMessageHelper.setText(emailMessage.getMessageContent());
            List<File> listAttachments = emailMessage.getAttachments();
            if (emailMessage.getAttachments() != null) {
                emailMessage.getAttachments().stream().forEach(f -> {
                    try {
                        mimeMessageHelper.addAttachment(f.getName(), f);
                    } catch (MessagingException ex) {
                        log.error("Ошибка при обработке списка вложенных файлов.");
                        throw new EmailException("Ошибка при обработке списка вложенных файлов.",ex);
                    }
                });
            }
            mailSender.send(mimeMessageHelper.getMimeMessage());
        } catch (MessagingException ex) {
            log.error("Ошибка при формировании пакета сообщения для передачи получателю.");
            throw new EmailException("Ошибка при формировании пакета сообщения для передачи получателю.",ex);
        }
    }

}
