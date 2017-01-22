# CONSTANTS
readonly PROJECT_NAME="telemetry-client"
readonly PROGNAME="$( basename $0 )"
readonly LOG_FILE=""
readonly SCRIPT_DEPENDENCIES=( "bash" )

readonly DATA_DIR="${HOME_DIR}/.tmp"
readonly DATA_PIPE="${DATA_DIR}/default.pipe"

readonly TELEMETRY_SERVER=127.0.0.1
readonly TELEMETRY_PORT=5050