# Guide d'installation

## Auteur : Ahmed Yassine LAMIASSER

## Prérequis
- macOS ou Ubuntu/Debian
- Accès sudo
- Git installé

## 1. Cloner le projet

```bash
git clone https://github.com/Layassine/blog_statique.git
cd blog_statique
```

## 2. Installer Apache

### Sur macOS (déjà installé)
```bash
sudo apachectl start
```

### Sur Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
```

## 3. Vérifier Apache

### macOS
```bash
sudo apachectl status
```

### Linux
```bash
sudo systemctl status apache2
```

## 4. Tester dans le navigateur
http://localhost

## 5. Trouver l'adresse IP locale

### macOS
```bash
ipconfig getifaddr en0
```

### Linux
```bash
hostname -I
```
