# sets up directories
tc::setup() {
  [ ! -d "${DATA_DIR}" ] && mkdir "${DATA_DIR}"
}

# Sends data to telemetry server
tc::send_data() {
  echo "$@" > /dev/udp/${TELEMETRY_SERVER}/${TELEMETRY_PORT}
}

tc::run_pipe() {
  
  [ ! -p "${DATA_PIPE}" ] && mkfifo "${DATA_PIPE}"

  tail -f "${DATA_PIPE}" | while read line ; do
    tc::send_data "${line}"
  done

}