# Send emails

## Install postfix

```bash
sudo apt-get install postfix
```

- Select Internet Site
- Fill with domain
- Finish the installation process

## Get Gmail App Password

- Go to https://myaccount.google.com/apppasswords
- Add a new app
- Copy the password

## Configure SMTP

- Create file `/etc/postfix/sasl/sasl_passwd`
  - Use `sudo` if you aren't root

```
[smtp.gmail.com]:587 example@gmail.com:copiedpassword
```

- Create hash database
  - This creates a db in `/etc/postfix/sasl/sasl_passwd.db`

```bash
sudo postmap /etc/postfix/sasl/sasl_passwd
```

- Protect password db

```
sudo chown root:root /etc/postfix/sasl/sasl_passwd /etc/postfix/sasl/sasl_passwd.db
sudo chmod 0600 /etc/postfix/sasl/sasl_passwd /etc/postfix/sasl/sasl_passwd.db
```

- Last configurations setup
  - Edit file `/etc/postfix/main.cf`

```
mydestination = $myhostname, localhost, localhost.localdomain
relayhost = [smtp.gmail.com]:587
mynetworks = 127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128
```

- Add this at the end of the file to enable SASL authentication for postfix

```
# Enable SASL authentication
smtp_sasl_auth_enable = yes
smtp_sasl_security_options = noanonymous
smtp_sasl_password_maps = hash:/etc/postfix/sasl/sasl_passwd
smtp_tls_security_level = encrypt
smtp_tls_CAfile = /etc/ssl/certs/ca-certificates.crt
```

- Finally restart postfix `sudo systemctl restart postfix`

## Send email

- Create a file

```
to:example@gmail.com
from:myself@gmail.com
subject: Test email

Testing
```

- Use `sendmail -t < fileName`
