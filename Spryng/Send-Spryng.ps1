# Assembly for http encoding the message
Add-Type -AssemblyName System.Web

# Provide authentication information for Spryng API
$apiUsername = ''
$apiPassword = ''
$apiRoute = ''

# Provide sending information
$receiverPhonenumber = ""
$senderName = ""

# Compose the message
$message = ""
$messageData = [System.Web.HttpUtility]::UrlEncode($message)

# Encoded parameter string for sending the message
$apiParameters = "USERNAME=$apiUsername `
            &PASSWORD=$apiPassword `
            &DESTINATION=$receiverPhonenumber `
            &SENDER=$senderName `
            &BODY=$messageData `
            &ROUTE=$apiRoute"


# Create the AP URI with all te needed information
$apiUri = "https://api.spryngsms.com/api/send.php"
$uri = $apiUri + "?" + $apiParameters

# Calll the API webrequest
Invoke-WebRequest -Method post -Uri $uri -ContentType "application/x-www-form-urlencoded" -UseBasicParsing

