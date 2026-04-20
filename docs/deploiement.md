# Guide de déploiement

## Auteur : Ahmed Yassine LAMIASSER

## Déploiement automatique (recommandé)

```bash
sudo bash scripts/deploy.sh
```

## Déploiement manuel

### Sur macOS
```bash
sudo cp -r *.html /Library/WebServer/Documents/
sudo cp -r css /Library/WebServer/Documents/
sudo cp -r images /Library/WebServer/Documents/
sudo cp -r articles /Library/WebServer/Documents/
sudo apachectl restart
```

### Sur Linux
```bash
sudo cp -r *.html /var/www/html/
sudo cp -r css /var/www/html/
sudo cp -r images /var/www/html/
sudo cp -r articles /var/www/html/
sudo systemctl restart apache2
```

## Corriger les permissions

### macOS
```bash
sudo chown -R _www:_www /Library/WebServer/Documents/
sudo chmod -R 755 /Library/WebServer/Documents/
```

### Linux
```bash
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
```

## Vérification réseau

```bash
sudo bash scripts/check_apache.sh
```

## Ports utilisés

| Service      | Port |
|--------------|------|
| Apache HTTP  | 80   |

## Commandes utiles Apache

### macOS
```bash
sudo apachectl start    # Démarrer
sudo apachectl stop     # Arrêter
sudo apachectl restart  # Redémarrer
```

### Linux
```bash
sudo systemctl start apache2    # Démarrer
sudo systemctl stop apache2     # Arrêter
sudo systemctl restart apache2  # Redémarrer
```
