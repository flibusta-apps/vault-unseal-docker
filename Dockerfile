FROM hashicorp/vault:latest

ADD ./vault-unseal.sh /vault-unseal.sh
RUN chmod a+x /vault-unseal.sh

CMD ["/bin/sh", "-c", "while true; do /vault-unseal.sh; sleep 30; done"]
