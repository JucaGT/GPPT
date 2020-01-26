Clear-Host
Write-Host "Bienvenido al juego Piedra, Papel o Tijeras"
$valores=@('PIEDRA', 'PAPEL', 'TIJERAS')
$maquina=Get-Random $valores.Length
$jugador = Read-Host "Introduce tu elección en mayúsculas (PIEDRA, PAPEL O TIJERAS)"
$maquina = $valores[$maquina]
Write-Host "Elegiste $jugador y la maquina ha elegido $maquina"
if (($jugador -eq "PIEDRA") -and ($maquina -eq "TIJERAS")){
    Write-Host "¡Ganaste!"
} elseif (($jugador -eq "PIEDRA") -and ($maquina -eq "PIEDRA")){
         Write-Host "¡Empate!"
    } elseif (($jugador -eq "PIEDRA") -and ($maquina -eq "PAPEL")){
         Write-Host "¡Perdiste!"
        } elseif (($jugador -eq "PAPEL") -and ($maquina -eq "PAPEL")){
            Write-Host "¡Empate!"
         } elseif (($jugador -eq "PAPEL") -and ($maquina -eq "PIEDRA")){
                Write-Host "¡Ganaste!"
            } elseif (($jugador -eq "PAPEL") -and ($maquina -eq "TIJERAS")){
                 Write-Host "¡Perdiste!"
                } elseif (($jugador -eq "TIJERAS") -and ($maquina -eq "PAPEL")){
                    Write-Host "¡Ganaste!"
                    } elseif (($jugador -eq "TIJERAS") -and ($maquina -eq "PIEDRA")){
                     Write-Host "¡Perdiste!"
                     } elseif (($jugador -eq "TIJERAS") -and ($maquina -eq "TIJERAS")){
                         Write-Host "¡Empate!"
                        } else {
                                Write-Host "Has introducido un valor no admitido"
                            }
                      