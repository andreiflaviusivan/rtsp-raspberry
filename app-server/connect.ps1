#!/usr/bin/pwsh

if ($args.length -le 0) {
	Write-Error "You need to supply an IP address!"

	exit 123;
}

$ip = $args[0]
$location = "pm2"

ssh -i ./ssh-keys/id_rsa root@$ip