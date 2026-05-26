clear

# TITLE
figlet -f smslant "CYBER SYSTEM" | lolcat
echo

# INFO BOX
cat <<EOF | lolcat
╔══════════════════════════════════════════╗
║ USER     : Username                        ║
║ DEVICE   : $(getprop ro.product.model)
║ ANDROID  : $(getprop ro.build.version.release)
║ UPTIME   : $(uptime -p)
║ BATTERY  : $(termux-battery-status 2>/dev/null | grep percentage | awk '{print $2}' | tr -d ',')%
║ DATE     : $(date '+%A, %d %B %Y  %H:%M')
║ STATUS   : [■■■■■■■■■■] ONLINE           ║
║ MODE     : >>> GHOST PROTOCOL <<<        ║
╚══════════════════════════════════════════╝
EOF

echo

# RANDOM HACKER QUOTE
quotes=(
  "The quieter you become, the more you can hear."
  "In cyberspace, no one can hear you scream."
  "Hack the planet."
  "There is no spoon. Only root."
  "Privacy is not a crime."
  "The best hack is the one they never find."
  "Stay in the shadows. Move in silence."
  "Knowledge is the only weapon that matters."
  "Every system has a weakness. Find it."
  "Code is poetry written in logic."
  "The matrix has you, Synone."
  "Not all those who wander are lost. Some are scanning ports."
  "Root is not a privilege. It is a responsibility."
  "Trust no one. Verify everything."
  "They see a screen. You see a doorway."
  "The network is the battlefield."
  "Encryption is freedom."
  "Behind every firewall is a curious mind."
  "You are not a hacker. You are a ghost."
  "Leave no trace. Leave no mercy."
  "The system fears what it cannot control."
  "One zero-day can change everything."
  "Security is an illusion sold to the masses."
  "The darkest code runs in silence."
  "Power belongs to those who understand the machine."
  "A locked door is just an invitation."
  "sudo make me a sandwich."
  "There are no bugs. Only undocumented features."
  "In the land of the blind, the one-eyed man is root."
  "The first rule of hacking: there are no rules."
  "We are not criminals. We are explorers."
  "Access denied is just a challenge."
  "The truth is behind the firewall."
  "Information wants to be free."
  "Sleep is for those without shell access."
  "Fear the man who has only one terminal."
  "The deeper you go, the darker it gets."
  "They built the cage. You found the key."
  "Not all heroes wear capes. Some wear hoodies."
  "Your password is weak. Your mind should not be."
  "The best weapon is a curious mind."
  "Packets never lie. People do."
  "In root we trust."
  "The night belongs to those who know the commands."
  "Hack not out of malice. Hack out of curiosity."
  "Every port is a story waiting to be read."
  "The ghost in the machine is you, Synone."
  "They patched the exploit. Not the curiosity."
  "Code by day. Phantom by night."
  "The terminal is my canvas. Logic is my brush."
)
random_quote="${quotes[$(( (RANDOM * RANDOM % ${#quotes[@]}) + 1 ))]}"
echo "" | lolcat
cowsay -f tux "$random_quote" | lolcat -p 0.3 -S 100
echo "" | lolcat

echo ">>> ACCESS GRANTED <<<" | lolcat
echo
