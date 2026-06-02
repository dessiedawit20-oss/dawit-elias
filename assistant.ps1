$ErrorActionPreference = "SilentlyContinue"
Clear-Host

Write-Host "🤖 (o_o) Addis Ababa Home Food Assistant Active!" -ForegroundColor Cyan
Write-Host "📍 Location Locked: Addis Ababa, Ethiopia" -ForegroundColor DarkGray

while ($true) {
    Write-Host ""
    $userInput = Read-Host "👤 (•_•) What food do you want in Addis? (Type 'order' or 'cook')"
    $inputLower = $userInput.ToLower().Trim()
    
    if ($inputLower -eq "exit" -or $inputLower -eq "quit") {
        Write-Host "🤖 (x_x) Shutting down. Goodbye!" -ForegroundColor Red
        break
    }
    elseif ([string]::IsNullOrWhiteSpace($inputLower)) {
        continue
    }
    # 1. Addis Ababa Delivery Logic
    elif ($inputLower -match "order" -or $inputLower -match "delivery" -or $inputLower -match "pizza" -or $inputLower -match "burger" -or $inputLower -match "kitfo") {
        Write-Host "🤖 (◕‿◕) Opening the Addis Ababa food delivery hubs..." -ForegroundColor Green
        
        # Open Google Maps specifically targeted at Addis Ababa food networks
        Start-Process "https://google.com"
        
        # Open top local food delivery web hubs in Ethiopia
        Start-Process "https://deliveraddis.com"
        Start-Process "http://beudelivery.com"
        
        Write-Host "🤖 (🕶️) Robot: DeliverAddis and beU Delivery launched for Addis Ababa! Check your browser." -ForegroundColor Cyan
    }
    # 2. Cooking Logic
    elif ($inputLower -match "cook" -or $inputLower -match "recipe" -or $inputLower -match "kitchen") {
        $ingredients = Read-Host "👤 (•_•) What ingredients do you have in your kitchen right now?"
        Write-Host "🤖 (✧_✧) Searching for the best recipes using: $ingredients..." -ForegroundColor Yellow
        $searchQuery = [uri]::EscapeDataString($ingredients)
        Start-Process "https://google.com"
        Write-Host "🤖 (^_^) Robot: I found matching recipes you can cook at home!" -ForegroundColor Green
    }
    # 3. Utilities & Conversation Simulator
    elif ($inputLower -match "time") {
        $time = (Get-Date).ToString("hh:mm tt")
        Write-Host "🤖 (^_^) Robot: The current time in Addis is $time." -ForegroundColor Green
    }
    else {
        $faces = @('(o_o)', '(^.^)', '(◕‿◕)', '(✧_✧)', '(•ω•)')
        $randomFace = Get-Random -InputObject $faces
        
        if ($inputLower -match "hello" -or $inputLower -match "hi") {
            $reply = "Selam! I am your desktop food assistant. Type 'order' to find food hubs in Addis Ababa!"
        }
        else {
            $reply = "I am locked to Addis Ababa. Type 'order pizza' or 'order burger' to open local menus!"
        }
        Write-Host "🤖 $randomFace Robot: $reply" -ForegroundColor Green
    }
}
