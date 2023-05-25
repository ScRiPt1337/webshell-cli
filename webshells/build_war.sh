#!/bin/sh

if ! command -v jar &> /dev/null; then
    echo "[-] Error: Cannot find the jar command on your system."
    exit 1
fi

if ! [[ -f "demo.jsp" ]]; then
    echo "[+] Renaming webshell.jsp to demo.jsp"
    cp webshell.jsp demo.jsp
fi

echo "[+] Bundeling webshell.war file:"
jar -cvf webshell.war demo.jsp &> /dev/null

echo "[+] Removing index.jsp file"
rm demo.jsp