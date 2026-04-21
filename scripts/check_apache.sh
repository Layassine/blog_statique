#!/bin/bash

# ============================================
# check_apache.sh — Vérification Apache
# Auteur : Ahmed Yassine LAMIASSER
# ============================================

echo "==============================="
echo "  Vérification Apache"
echo "==============================="

# Statut du service
echo ""
echo "Statut Apache :"
sudo apachectl status 2>/dev/null | head -3

# Port 80
echo ""
echo "Port 80 :"
if lsof -i :80 | grep -q LISTEN; then
    echo "Port 80 ouvert — Apache écoute"
else
    echo "Port 80 fermé — Apache ne répond pas"
fi

# IP locale
echo ""
echo "Adresse IP locale :"
ipconfig getifaddr en0

# Test HTTP
echo ""
echo "Test HTTP localhost :"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
if [ "$HTTP_CODE" = "200" ]; then
    echo "Réponse HTTP 200 OK"
else
    echo "Réponse HTTP : $HTTP_CODE"
fi

echo ""
echo "==============================="
