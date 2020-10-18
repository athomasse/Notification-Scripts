# Provide authentication information from Pushover
$user_key = ""
$api_key = ""

# Provide message details
$message_title = ""
$message_body = ""
$message_sound = ""

# Compose the data body
$data = @{
    token   = "$api_key";
    user    = "$user_key";
    title   = "$message_title"
    message = "$message_body"
    sound   = "$message_sound"
}


Invoke-RestMethod -Method Post -Uri "https://api.pushover.net/1/messages.json" -Body $data | Out-Null