param (
  [Parameter(Mandatory=$true)][string]$url,
  [Parameter(Mandatory=$true)][string]$user,
  [Parameter(Mandatory=$true)][string]$password
)

Invoke-WebRequest -Uri $url -OutFile 'archive.7z' -UseBasicParsing -Credential (New-Object PSCredential($user, (ConvertTo-SecureString -AsPlainText -Force -String $password)))
