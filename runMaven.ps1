# Get the last command that includes 'mvn'
$lastMavenCmd = (Get-History | Where-Object { $_.CommandLine -like "*mvn*"} | Select-Object -Last 1 -ExpandProperty CommandLine)

# Extract just the command text
# $cmdText = $lastMavenCmd.CommandLine
# Assuming $cmdText contains the last Maven command
Write-Host "Last Maven Command: $lastMavenCmd"
# Set system environment variable (admin privilege required)
[System.Environment]::SetEnvironmentVariable("LAST_MAVEN_COMMAND", $lastMavenCmd, "User")