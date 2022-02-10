# Verbose list of pulseaudio sinks
pacmd list-sinks |
	# Print lines containing 'index:'
	awk '/index:/' |
	# Print first line containing '*'
	grep -m 1 '*' |
	# Print second column of STDIN (delimited by ': ')
	awk -F ': ' '{print $2}'
