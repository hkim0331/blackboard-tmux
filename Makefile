all:
	echo "'make server' to install server, /usr/local/bin/tx"
	echo "'make client' to install clinet, ${HOME}/bin/bb."

server:
	install -m 0755 tx.sh /usr/local/bin/tx

client: bin
	install -m 0755 bb.sh ${HOME}/bin/bb

bin:
	@mkdir ${HOME}/bin

clean:
	${RM} *~
