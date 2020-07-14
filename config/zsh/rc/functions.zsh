# Open something and disown the process
function open () {
    xdg-open "$*" &
    disown
}
