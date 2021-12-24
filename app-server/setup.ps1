#!/usr/bin/pwsh

if ($args.length -le 0) {
	Write-Error "You need to supply an IP address!"

	exit 123;
}

$ip = $args[0]
$location = "pm2"

# Run this first
#ssh-copy-id -i ./ssh-keys/id_rsa openhabian@$ip

ssh -i ./ssh-keys/id_rsa pi@$ip "mkdir -p $location"
scp -i ./ssh-keys/id_rsa -r pi@$ip  ./scripts/*.sh "pi@${ip}:~/$location"
ssh -i ./ssh-keys/id_rsa pi@$ip "$location/initial-setup.sh"