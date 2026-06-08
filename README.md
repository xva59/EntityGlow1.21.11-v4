# MobGlow Mod – Fabric 1.21.1

Mobs leuchten mit anpassbarem Glow-Effekt. Konfigurierbar über ModMenu.

## Features
- **RGB-Farbe** frei wählbar (Rot, Grün, Blau je 0–255)
- **Stärke** (Deckkraft 0.0–1.0)
- **Näher = heller** (Glow wird mit Distanz schwächer)
- **Max. Distanz** einstellbar (4–128 Blöcke)
- **Outline-Dicke** (1–5)
- **Mob-Typen** einzeln ein-/ausschaltbar: Feindlich, Passiv, Neutral, Boss
- Komplette **ModMenu**-Integration mit schönem Config-Screen

## Benötigte Mods (in mods/ legen)
1. **Fabric API** – https://modrinth.com/mod/fabric-api/versions?g=1.21.1
2. **ModMenu** – https://modrinth.com/mod/modmenu/versions?g=1.21.1
3. **Cloth Config** – https://modrinth.com/mod/cloth-config/versions?g=1.21.1

## Build (einmalig, ~3–5 Minuten)

### Voraussetzungen
- Java 21 JDK: https://adoptium.net/
- Gradle wird automatisch heruntergeladen

### Windows
```
gradlew.bat build
```

### macOS / Linux
```bash
chmod +x gradlew
./gradlew build
```

Die fertige `.jar` liegt danach in: `build/libs/mobglow-1.0.0.jar`

## Installation
1. `.jar` in den `mods/`-Ordner von Minecraft kopieren
2. Auch Fabric API, ModMenu und Cloth Config in `mods/` legen
3. Minecraft mit Fabric 1.21.1 starten
4. Im Hauptmenü → Mods → MobGlow → Config öffnen

## Mod-Ordner finden
- **Windows**: `%appdata%\.minecraft\mods\`
- **macOS**: `~/Library/Application Support/minecraft/mods/`
- **Linux**: `~/.minecraft/mods/`
