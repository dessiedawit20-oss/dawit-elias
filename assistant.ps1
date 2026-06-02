$ErrorActionPreference = "SilentlyContinue"
Clear-Host
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13

Write-Host "🤖 (o_o) All-In-One Robot Workspace Active!" -ForegroundColor Cyan
Write-Host "📍 Location: Addis Ababa, Ethiopia" -ForegroundColor DarkGray
Write-Host "💡 Commands: 'order', 'cook', 'game', 'dashboard', 'time', 'exit'" -ForegroundColor Gray

while ($true) {
    Write-Host ""
    $userInput = Read-Host "👤 (•_•) Command Console"
    $inputLower = $userInput.ToLower().Trim()
    
    if ($inputLower -eq "exit" -or $inputLower -eq "quit") {
        Write-Host "🤖 (x_x) Shutting down. Goodbye!" -ForegroundColor Red
        break
    }
    elif ([string]::IsNullOrWhiteSpace($inputLower)) {
        continue
    }
    # ADDIS FOOD GATEWAY
    elif ($inputLower -match "order" -or $inputLower -match "delivery" -or $inputLower -match "pizza" -or $inputLower -match "burger") {
        Write-Host "🤖 (◕‿◕) Opening Addis food hubs and printing local shortcodes..." -ForegroundColor Green
        Start-Process "https://google.com"
        Start-Process "https://deliveraddis.com"
        Write-Host "`n☎️ --- ADDIS ABABA DELIVERY SHORTCODES ---" -ForegroundColor Yellow
        Write-Host "🔹 beU Delivery  ->  9533" -ForegroundColor White
        Write-Host "🔹 Tikus Delivery ->  6022" -ForegroundColor White
        Write-Host "🔹 Deliver Addis  ->  0944-10-11-12" -ForegroundColor White
        Write-Host "----------------------------------------`n" -ForegroundColor Yellow
    }
    # COOKING INTELLIGENCE
    elif ($inputLower -match "cook" -or $inputLower -match "recipe" -or $inputLower -match "kitchen") {
        $ingredients = Read-Host "👤 (•_•) Enter available kitchen ingredients"
        Write-Host "🤖 (✧_✧) Searching for recipes matching: $ingredients..." -ForegroundColor Yellow
        Start-Process "https://google.com([uri]::EscapeDataString($ingredients))"
    }
    # LAUNCH VISUAL FACE DASHBOARD
    elif ($inputLower -match "dashboard" -or $inputLower -match "interface" -or $inputLower -match "face") {
        Write-Host "🤖 (✧_✧) Initiating local graphical matrix..." -ForegroundColor Green
        Start-Process "$HOME\Downloads\my_robot_system\dashboard.html"
    }
    # LAUNCH PUZZLE MINI-GAME
    elif ($inputLower -match "game" -or $inputLower -match "play" -or $inputLower -match "puzzle") {
        Write-Host "🤖 (•̀ᴗ•́) Booting text-adventure sector..." -ForegroundColor Yellow
        Start-Sleep -Seconds 1
        $score = 0
        Write-Host "`n🔐 --- ROBOT CYBER PUZZLE CORE ---" -ForegroundColor Magenta
        
        # Riddle 1
        Write-Host "1. I speak without a mouth and hear without ears. I have no body, but I come alive with wind. What am I?" -ForegroundColor White
        $ans1 = Read-Host "Your Answer"
        if ($ans1.ToLower().Trim() -match "echo") { Write-Host "✅ CORRECT! (+10 pts)" -ForegroundColor Green; $score += 10 } else { Write-Host "❌ WRONG! Correct answer: Echo" -ForegroundColor Red }
        
        # Riddle 2
        Write-Host "`n2. The more of them you take, the more you leave behind. What are they?" -ForegroundColor White
        $ans2 = Read-Host "Your Answer"
        if ($ans2.ToLower().Trim() -match "footstep|step") { Write-Host "✅ CORRECT! (+10 pts)" -ForegroundColor Green; $score += 10 } else { Write-Host "❌ WRONG! Correct answer: Footsteps" -ForegroundColor Red }
        
        Write-Host "`n🏆 GAME OVER. Final Score: $score / 20" -ForegroundColor Magenta
    }
    # BASIC UTILITIES
    elif ($inputLower -match "time") {
        $time = (Get-Date).ToString("hh:mm tt")
        Write-Host "🤖 (^_^) Robot: The current time is $time." -ForegroundColor Green
    }
    else {
        $faces = @('(o_o)', '(^.^)', '(◕‿◕)', '(✧_✧)', '(•ω•)')
        $randomFace = Get-Random -InputObject $faces
        Write-Host "🤖 $randomFace Robot: System operational. Type 'order', 'game', or 'dashboard'!" -ForegroundColor Green
    }
}
