# ========================================
# Studio del Melucio presents:
# FFXIV Class Selection Tool
# Version 1.1 EN - August 23, 2025
# ========================================
# This script provides recommendations for class selection in FFXIV.

# Recurring header as function
function Header {
    cls
    Write-Host "`n =====================================" -ForegroundColor Cyan
    Write-Host " ===== FFXIV Class Selection Tool ====" -ForegroundColor Cyan
    Write-Host " =====================================" -ForegroundColor Cyan
    Write-Host " ======= by Studio del Melucio" ======= -ForegroundColor Cyan
    Write-Host " =====================================`n" -ForegroundColor Cyan
}

# Help or Damage?
Header
do {
    $input = Read-Host "Do you want to help others (type h) or deal damage (type d)?"
    Header
    
    if ($input -eq "h") {
        Write-Host "Great! You've decided to help others!" -ForegroundColor Yellow
        
        # Support -> Heal <> Tank
        do {
            $input2 = Read-Host "Do you want to heal others (type h) or protect them from damage (type p)?"
            Header
            
            if ($input2 -eq "h") {
                Write-Host "Good choice, healing others is very important!" -ForegroundColor Yellow
                
                # Healing -> Pure Healer <> Shield
                do {
                    $input3 = Read-Host "Do you prefer direct healing (type d) or preventive shields (type s)?"
                    Header
                    
		            # Direct Healers
                    if ($input3 -eq "d") {
                        Write-Host "Direct Healers: White Mage (via Conjurer starting class) or Astrologian (from level 30, Heavensward expansion)" -ForegroundColor Green
                        Write-Host "These classes focus on strong direct healing!" -ForegroundColor Yellow
                        break
		            # Shield Healers
                    } elseif ($input3 -eq "s") {
                        Write-Host "Shield Healers: Scholar (via Arcanist starting class) or Sage (from level 70, Endwalker expansion)" -ForegroundColor Green
                        Write-Host "These classes can create barriers and then heal!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Please use 'd' or 's', thank you!" -ForegroundColor Red
                    }
                } while ($input3 -ne "d" -and $input3 -ne "s")
                
            } elseif ($input2 -eq "p") {
                Write-Host "Protecting others from damage is a noble goal!" -ForegroundColor Green
                		
		        # Tanks -> aggressive <> controlled
		        do {
		            $input4 = Read-Host "Do you prefer aggressive attacks (type a) or controlled defense (type c)?"
		            Header
		    
		            # Aggressive/attacking
		            if ($input4 -eq "a") {
                        Write-Host "Aggressive Tanks: Warrior (via Marauder starting class) or Gunbreaker (from level 60, Shadowbringers expansion)" -ForegroundColor Green
			            Write-Host "These classes attack aggressively and overwhelm the enemy!" -ForegroundColor Yellow
			            break
		            # Controlled/defensive
		            } elseif ($input4 -eq "c") {
		    	        Write-Host "Controlled Tanks: Paladin (via Gladiator starting class) or Dark Knight (from level 30, Heavensward expansion)" -ForegroundColor Green  
			            Write-Host "These classes defend with control and protect the group!" -ForegroundColor Yellow
			            break
		            } else {
			            Write-Host "Please use 'a' or 'c', thank you!" -ForegroundColor Red
		            }
		        } while ($input4 -ne "a" -and $input4 -ne "c")	

            } else {
                Write-Host "Please use 'h' or 'p', thank you!" -ForegroundColor Red
            }
        } while ($input2 -ne "h" -and $input2 -ne "p")
        
    } elseif ($input -eq "d") {
        Write-Host "Great! You've decided to deal damage!" -ForegroundColor Yellow
        
        # DPS Selection
        do {
            $input2 = Read-Host "Do you want to fight in melee range (type m) or from distance (type r)?"
            Header
            
            # Melee
            if ($input2 -eq "m") {
                Write-Host "Melee combat is exciting - you're right in the action!" -ForegroundColor Yellow
                
                # Melee Style
                do {
                    $input3 = Read-Host "Do you prefer heavy hits (type h) or fast combos (type f)?"
                    Header
                    
                    # Heavy
                    if ($input3 -eq "h") {
                        Write-Host "Heavy Melee DPS: Dragoon (via Lancer starting class), Samurai (from level 50) or Reaper (from level 70, Endwalker expansion)" -ForegroundColor Green
                        Write-Host "These classes deal massive damage with powerful single strikes!" -ForegroundColor Yellow
                        break
                    # Fast
                    } elseif ($input3 -eq "f") {
                        Write-Host "Fast Melee DPS: Monk (via Pugilist starting class), Ninja (via Rogue, from level 10) or Viper (from level 80, Dawntrail expansion)" -ForegroundColor Green
                        Write-Host "These classes rely on speed and fluid combos!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Please use 'h' or 'f', thank you!" -ForegroundColor Red
                    }
                } while ($input3 -ne "h" -and $input3 -ne "f")
                
            # Ranged
            } elseif ($input2 -eq "r") {
                Write-Host "Ranged combat offers safety and overview!" -ForegroundColor Yellow
                
                do {
                    $input3 = Read-Host "Magical (type m) or physical (type p) from range?"
                    Header
                    
                    # Magical
                    if ($input3 -eq "m") {
                        Write-Host "Magical ranged combat - the power of elements!" -ForegroundColor Yellow
                        
                        # Magical Style
                        do {
                            $input4 = Read-Host "Do you prefer destructive explosions (type d) or flexible versatility (type v)?"
                            Header
                            
                            # Destructive
                            if ($input4 -eq "d") {
                                Write-Host "Destructive Mages: Black Mage (via Thaumaturge starting class) or Pictomancer (from level 80, Dawntrail expansion)" -ForegroundColor Green
                                Write-Host "These classes specialize in devastating spells with high damage!" -ForegroundColor Yellow
                                break
                            # Versatile
                            } elseif ($input4 -eq "v") {
                                Write-Host "Versatile Mages: Summoner (via Arcanist starting class) or Red Mage (from level 50, Stormblood expansion)" -ForegroundColor Green
                                Write-Host "These classes offer flexibility and can also support!" -ForegroundColor Yellow
                                break
                            } else {
                                Write-Host "Please use 'd' or 'v', thank you!" -ForegroundColor Red
                            }
                        } while ($input4 -ne "d" -and $input4 -ne "v")
                        
                    # Physical
                    } elseif ($input3 -eq "p") {
                        Write-Host "Physical Ranged DPS: Bard (via Archer starting class), Machinist (from level 30, Heavensward expansion) or Dancer (from level 60, Shadowbringers expansion)" -ForegroundColor Green
                        Write-Host "These classes use bows, firearms, or throwing weapons and can support the group on the side!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Please use 'm' or 'p', thank you!" -ForegroundColor Red
                    }
                } while ($input3 -ne "m" -and $input3 -ne "p")
            } else {
                Write-Host "Please use 'm' or 'r', thank you!" -ForegroundColor Red
            }
        } while ($input2 -ne "m" -and $input2 -ne "r")
        
    } else {
        Write-Host "Please use 'h' or 'd', thank you!" -ForegroundColor Red
    }
} while ($input -ne "h" -and $input -ne "d")

Write-Host "`n=====================================" -ForegroundColor Cyan
Write-Host "Have fun in Eorzea!" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`nA tool by Studio del Melucio" -ForegroundColor Cyan
Write-Host "© 2025 Studio del Melucio" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`nPress [Enter] to continue..." -NoNewline -ForegroundColor Yellow
Read-Host

exit 0