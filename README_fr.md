
# Plateforme Linguistique Lingo Ringo

### Développeurs ayant contribué
- Dave Jean Baptiste
- Rafael Escalona
- Jacob Zapitoski
- Youssef Ayad

---

## Nom de l'application
L'application se nomme **Lingo Ringo**

---

## Contexte de programmation
Cette application a été conçue dans un cadre académique, en tant que **projet scolaire**.

---

## Type d'application
Il s'agit d'une **application web**.

---

## Technologies utilisées
- **Framework** : Spring Boot
- **IDE** : IntelliJ IDEA Pro
- **Base de données** : MySQL Workbench

---

## Instructions d'installation et d'exécution

### 1. Prérequis
- Installer **MySQL Workbench** et créer un compte.
- Installer **IntelliJ IDEA Pro** et configurer le SDK nécessaire.

### 2. Cloner le projet
Clonez le projet depuis GitHub :
```bash
git clone <URL_DU_DEPOT>
```

### 3. Ouvrir le projet dans IntelliJ IDEA
- Ouvrez le dossier du projet dans IntelliJ IDEA.
- Vérifiez que le SDK est correctement configuré.

### 4. Créer la base de données
1. Ouvrez **MySQL Workbench**.
2. Copiez-collez le **script de création** dans MySQL Workbench :
   - Chemin du script :
     ```
     PlateformeLinguistique/src/main/java/com.tp.lingRingo/sql/ScripteDB.sql
     ```
3. Vérifiez les informations de connexion dans le fichier suivant :
   ```
   PlateformeLinguistique/src/main/java/application.properties
   ```

### 5. Lancer l'application
- Exécutez le projet dans IntelliJ IDEA.

### 6. Accéder à l'application
- Ouvrez un navigateur web et tapez :
  ```
  http://localhost:8080
  ```
- L'application est maintenant prête pour une démo.

---

## Bon à savoir
Si vous rencontrez des problèmes de connectivité, vérifiez vos informations de connexion dans le fichier `application.properties`.
