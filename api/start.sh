port="${PORT:-8080}"
stop() {
	kill -9 $(lsof -t -i ":$port")
}

wait_for_port_free() {
	while lsof -t -i ":$port" >/dev/null; do
		sleep 0.1
	done
}

start() {
	sh run main &
}

restart() {
	stop
	wait_for_port_free
	start
}

restart
