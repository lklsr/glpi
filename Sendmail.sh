#!/bin/bash
#
cat <<EOF | /usr/bin/nc smtp.devin.com.br 25
HELO $(hostname)
MAIL FROM: <hugo@devin.com.br>
RCPT TO: <destino@dominio.com.br>
DATA
From: Hugo Cisneiros (Eitch) <hugo@devin.com.br>
To: Nome do Destino <destino@dominio.com.br>
Date: $(date '+%a, %d %b %Y %H:%M:%S %z')
Subject: Assunto da mensagem
Content-Type: text/plain; charset=UTF-8
                                                                                                                                                                                               
Fala Destinatário!
 
Estou mandando este e-mail via shell script, usando o nc diretamente pelo SMTP.
Legal né?
 
Abraços!
 
.
QUIT
EOF
