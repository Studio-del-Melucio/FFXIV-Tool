# ========================================
# Studio del Melucio pr�sentiert:
# FFXIV Charakter-Wahl-Tool
# Version 1.1 Stand 23.08.2025
# ========================================
# Dieses Skript ist dazu gedacht eine Empfehlung auszugeben f�r die Charakterwahl in FFXIV. 

# Wiederkehrende Kopfzeile als Funktion
function Kopfzeile {
    cls
    Write-Host "`n =====================================" -ForegroundColor Cyan
    Write-Host " ===== FFXIV Charakter-Wahl-Tool =====" -ForegroundColor Cyan
    Write-Host " =====================================" -ForegroundColor Cyan
    Write-Host " ======= by Studio del Melucio" ======= -ForegroundColor Cyan
    Write-Host " =====================================`n" -ForegroundColor Cyan
}

# Helfen oder Schaden?
Kopfzeile
do {
    $eingabe = Read-Host "Willst du lieber anderen helfen (tippe h) oder Schaden verursachen (tippe s)?"
    Kopfzeile
    
    if ($eingabe -eq "h") {
        Write-Host "Toll! Du hast dich dazu entschieden zu helfen!" -ForegroundColor Yellow
        
        # Support -> Heal <> Tank
        do {
            $eingabe2 = Read-Host "Willst du andere heilen (tippe h) oder lieber vor Schaden bewahren (tippe b)?"
            Kopfzeile
            
            if ($eingabe2 -eq "h") {
                Write-Host "Gute Wahl, andere zu Heilen ist sehr wichtig!" -ForegroundColor Yellow
                
                # Heilen -> Rein-Heiler <> Schild
                do {
                    $eingabe3 = Read-Host "Bevorzugst du direktes Heilen (tippe h) oder pr�ventive Schilde (tippe s)?"
                    Kopfzeile
                    
		            # Direkte-Heiler
                    if ($eingabe3 -eq "h") {
                        Write-Host "Direkte Heiler: Wei�magier (via Startklasse Druide) oder Astrologe (ab Level 30, Heavensward-Erweiterung)" -ForegroundColor Green
                        Write-Host "Diese Klassen fokussieren sich auf starke direkte Heilung!" -ForegroundColor Yellow
                        break
		            # Schild-Heiler
                    } elseif ($eingabe3 -eq "s") {
                        Write-Host "Schild-Heiler: Gelehrter (via Startklasse Hermetiker) oder der Weise (ab Level 70, Endwalker-Erweiterung)" -ForegroundColor Green
                        Write-Host "Diese Klassen k�nnen Barrieren errichten und dann heilen!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Bitte nutze 'h' oder 's', danke!" -ForegroundColor Red
                    }
                } while ($eingabe3 -ne "h" -and $eingabe3 -ne "s")
                
            } elseif ($eingabe2 -eq "b") {
                Write-Host "Andere vor Schaden bewahren ist ein nobles Ziel!" -ForegroundColor Green
                		
		        # Tanks -> aggresiv <> kontrolliert
		        do {
		            $eingabe4 = Read-Host "Willst du lieber aggressiv angreifen (tippe a) oder kontrolliert verteidigen (tippe k)?"
		            Kopfzeile
		    
		            # Aggressiv/angreifend
		            if ($eingabe4 -eq "a") {
                        Write-Host "Aggressive Tanks: Krieger (via Startklasse Marodeur) oder Revolverklinge (ab Level 60, Shadowbringers-Erweiterung)" -ForegroundColor Green
			            Write-Host "Diese Klassen greifen aggressiv an und �berw�ltigen den Feind!" -ForegroundColor Yellow
			            break
		            # Kontrolliert/verteidigend
		            } elseif ($eingabe4 -eq "k") {
		    	        Write-Host "Kontrollierte Tanks: Paladin (via Startklasse Gladiator) oder Dunkelritter (ab Level 30, Heavensward-Erweiterung)" -ForegroundColor Green  
			            Write-Host "Diese Klassen verteidigen kontrolliert und besch�tzen die Gruppe!" -ForegroundColor Yellow
			            break
		            } else {
			            Write-Host "Bitte nutze 'a' oder 'k', danke!" -ForegroundColor Red
		            }
		        } while ($eingabe4 -ne "a" -and $eingabe4 -ne "k")	

            } else {
                Write-Host "Bitte nutze 'h' oder 'b', danke!" -ForegroundColor Red
            }
        } while ($eingabe2 -ne "h" -and $eingabe2 -ne "b")
        
    } elseif ($eingabe -eq "s") {
        Write-Host "Toll! Du hast dich dazu entschieden Schaden zu verursachen!" -ForegroundColor Yellow
        
        # DPS Auswahl
        do {
            $eingabe2 = Read-Host "Willst du aus der N�he (tippe n) oder aus der Ferne (tippe f) k�mpfen?"
            Kopfzeile
            
            # Nahk�mpfer
            if ($eingabe2 -eq "n") {
                Write-Host "Nahkampf ist aufregend - du bist direkt im Geschehen!" -ForegroundColor Yellow
                
                # Nahkampf-Stil
                do {
                    $eingabe3 = Read-Host "Bevorzugst du wuchtige Angriffe (tippe w) oder schnelle Kombos (tippe s)?"
                    Kopfzeile
                    
                    # Wuchtig
                    if ($eingabe3 -eq "w") {
                        Write-Host "Wuchtige Nahk�mpfer: Dragoon (via Startklasse Pikenier), Samurai (ab Level 50) oder Schnitter (ab Level 70, Endwalker-Erweiterung)" -ForegroundColor Green
                        Write-Host "Diese Klassen verursachen mit kraftvollen Einzelschl�gen massiven Schaden!" -ForegroundColor Yellow
                        break
                    # Schnell
                    } elseif ($eingabe3 -eq "s") {
                        Write-Host "Schnelle Nahk�mpfer: M�nch (via Startklasse Faustk�mpfer), Ninja (via Schurke, ab Level 10) oder Viper (ab Level 80, Dawntrail-Erweiterung)" -ForegroundColor Green
                        Write-Host "Diese Klassen setzen auf Geschwindigkeit und fl�ssige Kombos!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Bitte nutze 'w' oder 's', danke!" -ForegroundColor Red
                    }
                } while ($eingabe3 -ne "w" -and $eingabe3 -ne "s")
                
            # Fernk�mpfer
            } elseif ($eingabe2 -eq "f") {
                Write-Host "Fernkampf bietet dir Sicherheit und �bersicht!" -ForegroundColor Yellow
                
                do {
                    $eingabe3 = Read-Host "Magisch (tippe m) oder physisch (tippe p) aus der Ferne?"
                    Kopfzeile
                    
                    # Magisch
                    if ($eingabe3 -eq "m") {
                        Write-Host "Magischer Fernkampf - die Macht der Elemente!" -ForegroundColor Yellow
                        
                        # Magischer Stil
                        do {
                            $eingabe4 = Read-Host "Bevorzugst du zerst�rerische Explosionen (tippe z) oder flexible Vielseitigkeit (tippe v)?"
                            Kopfzeile
                            
                            # Zerst�rerisch
                            if ($eingabe4 -eq "z") {
                                Write-Host "Zerst�rerische Magier: Schwarzmagier (via Startklasse Thaumaturg) oder Piktomant (ab Level 80, Dawntrail-Erweiterung)" -ForegroundColor Green
                                Write-Host "Diese Klassen spezialisieren sich auf vernichtende Zauber mit hohem Schaden!" -ForegroundColor Yellow
                                break
                            # Vielseitig
                            } elseif ($eingabe4 -eq "v") {
                                Write-Host "Vielseitige Magier: Beschw�rer (via Startklasse Hermetiker) oder Rotmagier (ab Level 50, Stormblood-Erweiterung)" -ForegroundColor Green
                                Write-Host "Diese Klassen bieten Flexibilit�t und k�nnen auch unterst�tzen!" -ForegroundColor Yellow
                                break
                            } else {
                                Write-Host "Bitte nutze 'z' oder 'v', danke!" -ForegroundColor Red
                            }
                        } while ($eingabe4 -ne "z" -and $eingabe4 -ne "v")
                        
                    # Physisch
                    } elseif ($eingabe3 -eq "p") {
                        Write-Host "Physische Fernk�mpfer: Barde (via Startklasse Waldl�ufer), Maschinist (ab Level 30, Heavensward-Erweiterung) oder T�nzer (ab Level 60, Shadowbringers-Erweiterung)" -ForegroundColor Green
                        Write-Host "Diese Klassen nutzen B�gen, Schusswaffen oder Wurfwaffen und k�nnen nebenbei die Gruppe unterst�tzen!" -ForegroundColor Yellow
                        break
                    } else {
                        Write-Host "Bitte nutze 'm' oder 'p', danke!" -ForegroundColor Red
                    }
                } while ($eingabe3 -ne "m" -and $eingabe3 -ne "p")
            } else {
                Write-Host "Bitte nutze 'n' oder 'f', danke!" -ForegroundColor Red
            }
        } while ($eingabe2 -ne "n" -and $eingabe2 -ne "f")
        
    } else {
        Write-Host "Bitte nutze 'h' oder 's', danke!" -ForegroundColor Red
    }
} while ($eingabe -ne "h" -and $eingabe -ne "s")

Write-Host "`n=====================================" -ForegroundColor Cyan
Write-Host "Viel Spa� in Eorzea!" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`nEin Tool von Studio del Melucio" -ForegroundColor Cyan
Write-Host "� 2025 Studio del Melucio" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`n[Enter]-Taste nutzen zum Fortfahren..." -NoNewline -ForegroundColor Yellow
Read-Host

exit 0