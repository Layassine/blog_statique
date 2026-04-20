#!/bin/bash

# ============================================
# deploy.sh — Script de déploiement Apache
# Auteur : Ahmed Yassine LAMIASSER
# ============================================

SITE_DIR="$(dirname "$0")/.."
APACHE_DIR="/Library/WebServer/Documents"

echo "==============================="
echo "  Déploiement du Blog Statique"
echo "==============================="

# Étape 1 : Vérifier qu'Apache est installé
if ! command -v apachectl &> /dev/null; then
    echo "[ERREUR] Apache n'est pas installé."
    exit 1
fi

# Étape 2 : Copier les fichiers
echo "[1/4] Copie des fichiers vers $APACHE_DIR..."
sudo cp -r "$SITE_DIR"/*.html "$APACHE_DIR/" 2>/dev/null
sudo cp -r "$SITE_DIR"/css "$APACHE_DIR/" 2>/dev/null
sudo cp -r "$SITE_DIR"/images "$APACHE_DIR/" 2>/dev/null
sudo cp -r "$SITE_DIR"/articles "$APACHE_DIR/" 2>/dev/null

# Étape 3 : Corriger les permissions
echo "[2/4] Correction des permissions..."
sudo chown -R _www:_www "$APACHE_DIR"
sudo chmod -R 755 "$APACHE_DIR"

# Étape 4 : Redémarrer Apache
echo "[3/4] Redémarrage d'Apache..."
sudo apachectl restart

# Étape 5 : Vérification finale
echo "[4/4] Vérification..."
echo ""
echo "Déploiement réussi !"
echo "Accès : http://localhost"
echo "IP locale : $(ipconfig getifaddr en0)"
