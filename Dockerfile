From alpine:latest
COPY entrypoint.sh /
COPY sshd_config /etc/ssh/sshd_config
RUN apk add --no-cache openssh openssh-server-pam vim bash  
RUN adduser -D jump || exit 1

ENTRYPOINT ["/entrypoint.sh"]
Expose 9922
