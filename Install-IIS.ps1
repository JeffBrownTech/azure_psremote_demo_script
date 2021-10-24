param(
    [Parameter()]
    [string]
    $TimeZone = "Pacific Standard Time",

    [Parameter()]
    [string]
    $WebsiteMessage = "Hello, World!"
)

Set-TimeZone -Name $TimeZone
Install-WindowsFeature -Name Web-Server -IncludeManagementTools
Set-Content -Path "C:\inetpub\wwwroot\iisstart.htm" -Value $WebsiteMessage