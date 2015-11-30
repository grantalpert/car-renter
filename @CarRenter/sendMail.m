function recipient = sendMail(CarRenter,recipient, message, subject, sender, psswd)
% sendMail. Send an email from a predefined gmail account.



if nargin<5
    sender = 'e177project@gmail.com';
    psswd = 'matlab2015';
end

setpref('Internet','E_mail',sender);
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',sender);
setpref('Internet','SMTP_Password',psswd);

props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', ...
                  'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

sendmail(recipient, subject, message);

end