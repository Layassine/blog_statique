# 📝 MonBlog — Blog Statique

> Mini-projet étudiant : création et déploiement d'un blog statique avec HTML/CSS, Apache et Git.

---

## 📋 Présentation du projet

MonBlog est un site web statique composé de plusieurs pages HTML reliées entre elles, stylisées avec un fichier CSS global, et déployées sur un serveur Linux via Apache HTTP Server.

Ce projet met en pratique :

- La création de pages web en HTML/CSS
- Le déploiement sur un serveur Linux avec Apache
- La gestion collaborative de code avec Git et GitHub
- La structuration professionnelle d'un projet informatique

---

## 🗂️ Architecture du projet

```
blog-statique/
│
├── articles/
│   ├── article1.html       ← Article 1
│   ├── article2.html       ← Article 2
│   ├── article3.html       ← Article 3
│   ├── article4.html       ← Article 4
│   ├── article5.html       ← Article 5
│   └── articles.html       ← Liste de tous les articles
│
├── css/
│   └── style.css           ← Feuille de style globale
│
├── docs/
│   ├── deploiement.md      ← Guide de déploiement Apache
│   ├── installation.md     ← Guide d'installation
│   └── presentation.md     ← Support de soutenance
│
├── scripts/
│   ├── check_apache.sh     ← Vérification du service Apache
│   └── deploy.sh           ← Script de déploiement automatique
│
├── .gitignore
├── README.md               ← Ce fichier
├── apropos.html            ← Page À propos
├── contact.html            ← Page Contact
└── index.html              ← Page d'accueil
```

---

## 🌐 Pages du site

| Page | Fichier | Description |
|---|---|---|
| Accueil | `index.html` | Page principale avec hero et aperçu des articles |
| Articles | `articles/articles.html` | Liste de tous les articles du blog |
| Article 1 | `articles/article1.html` | Premier article |
| Article 2 | `articles/article2.html` | Deuxième article |
| Article 3 | `articles/article3.html` | Troisième article |
| Article 4 | `articles/article4.html` | Quatrième article |
| Article 5 | `articles/article5.html` | Cinquième article |
| À propos | `apropos.html` | Présentation de l'équipe et du projet |
| Contact | `contact.html` | Page de contact |

---

## 👥 Équipe et répartition des tâches

### 🎨 Fadi Safou — Frontend principal

**Branche Git :** `fadi_branch`

- `index.html` — Page d'accueil
- `css/style.css` — Feuille de style globale utilisée par tout le site
- Header, footer et navbar communs à toutes les pages
- Design responsive (mobile / desktop)
- Documentation README

---

### 📰 Hamza Aourik — Contenu et articles

**Branche Git :** `hamza/articles-pages`

- `articles/articles.html` — Liste de tous les articles
- `articles/article1.html` à `articles/article5.html` — Pages des articles
- Navigation entre les pages (précédent / suivant)
- Structure et lisibilité du contenu

---

### 🖥️ Ahmed Yassine Lamiasser — Linux / Apache / Déploiement

**Branche Git :** `ahmedyassine_branche`

- `scripts/deploy.sh` — Script Bash de déploiement automatique
- `scripts/check_apache.sh` — Script de vérification Apache
- `docs/installation.md` — Guide d'installation
- `docs/deploiement.md` — Guide de déploiement Apache
- Installation et configuration d'Apache sur Ubuntu/Debian
- Vérification réseau (`localhost` et IP locale)

---

### 📄 Fairouz M'Hijeb — Documentation et pages institutionnelles

**Branche Git :** `fairouz_branche`

- `apropos.html` — Présentation du projet et de l'équipe
- `contact.html` — Page de contact
- `docs/presentation.md` — Support de la soutenance finale
- Participation au `README.md`

---

## 🚀 Installation et déploiement

### Prérequis

- Système Linux (Ubuntu / Debian recommandé)
- Git installé
- Apache2 installé

### Étape 1 — Cloner le dépôt

```bash
git clone https://github.com/[nom-organisation]/blog-statique.git
cd blog-statique
```

### Étape 2 — Installer Apache

```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
```

### Étape 3 — Déployer le site

```bash
sudo cp -r * /var/www/html/
sudo chmod -R 755 /var/www/html/
```

Ou via le script automatique :

```bash
chmod +x scripts/deploy.sh
sudo ./scripts/deploy.sh
```

### Étape 4 — Tester

```
http://localhost
```

Depuis un autre appareil sur le même réseau :

```bash
hostname -I   # Récupérer l'IP du serveur
# Puis dans le navigateur : http://[IP-DU-SERVEUR]
```

---

## 🔧 Technologies utilisées

| Technologie | Utilisation |
|---|---|
| HTML5 | Structure de toutes les pages |
| CSS3 | Design et mise en page responsive |
| Apache HTTP Server | Serveur web pour héberger le site |
| Git | Gestion des versions |
| GitHub | Hébergement du dépôt collaboratif |
| Bash | Scripts d'automatisation |
| Linux (Ubuntu/Debian) | Système d'exploitation du serveur |

---

## 🌿 Workflow Git

```
main
├── fadi_branch
├── hamza/articles-pages
├── ahmedyassine_branche
└── fairouz_branche
```

### Convention des commits

| Préfixe | Utilisation |
|---|---|
| `feat:` | Nouvelle fonctionnalité ou nouveau fichier |
| `style:` | Modification CSS ou apparence |
| `fix:` | Correction d'un bug ou lien cassé |
| `docs:` | Ajout ou modification de documentation |
| `chore:` | Tâche technique (scripts, config) |

---

## ✅ Checklist du projet

### Développement
- [x] `index.html` — Page d'accueil
- [x] `articles/articles.html` — Liste des articles
- [x] `articles/article1.html` à `article5.html` — Articles
- [x] `apropos.html` — Page À propos
- [x] `contact.html` — Page Contact
- [x] `css/style.css` — Design global

### Git / Collaboration
- [x] Dépôt GitHub créé
- [x] Branches individuelles créées
- [x] Commits individuels réalisés
- [x] Pull Requests et merges effectués

### Linux / Apache
- [x] Apache installé et actif
- [x] Site copié dans `/var/www/html/`
- [x] Site accessible via `localhost`
- [x] Site accessible via IP locale

### Documentation
- [x] `README.md` complété
- [x] `docs/installation.md` complété
- [x] `docs/deploiement.md` complété
- [x] `docs/presentation.md` complété

### Scripts
- [x] `scripts/deploy.sh` créé
- [x] `scripts/check_apache.sh` créé

---

*Projet réalisé dans le cadre d'un mini-projet étudiant — 2024*
