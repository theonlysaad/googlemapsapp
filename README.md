# Application de Clonage de Google Maps - Flutter

📌 **Description**

Ce projet est une application mobile développée avec **Flutter**, permettant de cloner les fonctionnalités de base de **Google Maps**. L'application permet aux utilisateurs de visualiser une carte, de rechercher des lieux, d'afficher des marqueurs personnalisés et de naviguer jusqu'à une destination donnée.

---

## 🚀 Fonctionnalités

### 👥 **Utilisateur**
- 🗺️ **Affichage de la carte** : Affichage d'une carte avec possibilité de zoomer et de déplacer la carte.
- 🔍 **Recherche de lieux** : Permet à l'utilisateur de rechercher des lieux ou adresses sur la carte.
- 📍 **Ajout de marqueurs** : Permet d'ajouter des marqueurs personnalisés sur la carte en appuyant sur un emplacement.
- 🛣️ **Navigation** : Possibilité d'afficher un itinéraire entre deux points sur la carte.
- 🧭 **Suivi de la localisation en temps réel** : Suivi de la position actuelle de l'utilisateur sur la carte.

---

## 🛠 **Installation**

Suivez ces étapes pour installer et exécuter le projet localement.

### 1️⃣ **Cloner le dépôt**

```bash
git clone https://github.com/ton-repo/clonage-google-maps-flutter.git
cd clonage-google-maps-flutter
```

### 2️⃣ **Installer les dépendances**

Assurez-vous d'avoir **Flutter** installé sur votre machine. Si vous ne l'avez pas encore, vous pouvez le télécharger [ici](https://flutter.dev/docs/get-started/install).

Installez les dépendances du projet avec la commande suivante :

```bash
flutter pub get
```

### 3️⃣ **Configurer l'API Google Maps**

Pour utiliser Google Maps dans votre projet, vous devez obtenir une **clé API Google Maps**. Suivez ces étapes pour obtenir la clé API :
- Allez sur [Google Cloud Console](https://console.cloud.google.com/).
- Créez un projet et activez l'API Google Maps.
- Récupérez votre **clé API**.

Ajoutez cette clé dans votre projet Flutter :
- Ouvrez le fichier `android/app/src/main/AndroidManifest.xml`.
- Ajoutez la ligne suivante dans la section `<application>` :
  
  ```xml
  <meta-data
      android:name="com.google.android.maps.v2.API_KEY"
      android:value="VOTRE_CLE_API" />
  ```

### 4️⃣ **Lancer l'application**

Lancez l'application en mode développement avec la commande suivante :

```bash
flutter run
```

### 5️⃣ **Accéder à l'application**

Ouvrez l'application sur votre simulateur ou appareil physique. Vous devriez pouvoir voir la carte s'afficher avec les fonctionnalités de base du clone de Google Maps.

---

## 🛠 **Technologies utilisées**

- 🐦 **Flutter** : Framework pour le développement d'applications mobiles.
- 🌍 **Google Maps API** : Pour intégrer les fonctionnalités de la carte.
- 🎯 **Dart** : Langage de programmation utilisé avec Flutter.
- 📱 **Android/iOS** : Plateformes mobiles cibles.

---

## 🤝 Contribution

Les contributions sont les bienvenues ! Voici comment contribuer :

1. Forker le projet.
2. Créer une branche.
```bash
git checkout -b feature-ma-fonctionnalité
```
3. Committer vos modifications.
```bash
git commit -m "Ajout d'une fonctionnalité"
```
4. Pousser la branche.
```bash
git push origin feature-ma-fonctionnalité
```
5. Ouvrir une Pull Request.

---

💻 Développé avec ❤️ en Flutter.
```

---

### Explications :
- **Google Maps API** : Le projet utilise l'API de Google Maps pour afficher la carte et ajouter des fonctionnalités comme la recherche de lieux, les marqueurs, et la navigation.
- **Configuration de l'API** : Assurez-vous que votre clé API est correctement configurée dans le fichier `AndroidManifest.xml` pour que l'application fonctionne.
  
Cela vous offre une base solide pour un clone de Google Maps en Flutter avec des fonctionnalités essentielles. Vous pouvez ajouter plus de fonctionnalités ou personnaliser l'application selon vos besoins.