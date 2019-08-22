#!/usr/bin/env bash

for file in `find . -type f -name index.html`; do
	url=${file#"."}

	cat >${file} <<EOT
<!doctype html><html><head><title>https://ocubom.page${url}</title><link rel=canonical href=https://ocubom.page${url}><meta name=robots content=noindex,follow><meta charset=utf-8><meta http-equiv=refresh content="0; url=https://ocubom.page${url}"></head></html>
EOT
done


