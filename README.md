# vue_project
Le but du projet était de répliquer un site type blog que j'ai réalisé en php : http://deadpool.byethost11.com
Pour ce faire, j'ai mis en place une API développée en PHP me permettant de récupérer les données de la base de données de mon site d'origine.

Concernant l'API, celle-ci a été mise en ligne à l'adresse http://deadpool.byethost11.com/phprest/api/ cependant je n'ai pas réussi a faire fonctionner mon projet en y ajoutant l'API mise en ligne et n'ai pas réussi a trouver de solution à ce problème à l'heure actuelle. Il est donc nécessaire d'installer en local. Les dossier contenant l'API est disponnible dans ce repository sous le nom de "API_REST"

Le but était de recréer toutes les fonctionnalités du blog initial, y compris l'identification des membres, la gestion des autorisation et la publciation d'articles depuis le site. Cependant, j'ai fait face à des difficultés techniques qui ne m'ont pas permises de finir ces éléments pour la date de l'évaluation, mais le projet sera mis à jour même au delà de cette date, jusqu'à achèvement du projet.

Les fonctions mises en places sont donc les suivantes :
  - Mise en place d'un composant de navigation avec Vue-Router
  - Utilisation du module Vue-EasySlider pour réaliser un slider, dont les images viennent de l'API Picsum.
  - Récupération des données de la BDD du site d'origine via Axios (données utilisateurs, articles postés, commentaires, ..)
  - Page "MEMBRES DU SITE" : Répertorie tous les utilisateurs enregistrés et redirige vers leurs profils respectifs. L'information           conceernant le profil sélectionné est passé en variable via le Router Link.
  - Page "ACCUEIL" : Récupère et affiche les dernières news. En cliquant sur le pseudo de l'auteur de la news, on a accès à son profil       perso. En cliquant sur commentaire, arrive sur le détail de l'article avec la liste des commentaires. De même, chaque nom est           cliquable et redirige sur le profil de l'utilsiateur concerné.
  - Sur la page perso de l'utilisateur, l'ensemble de ses informations sont récupérées et listées. Ses commentaires sur tous les             articles y sont également listés.
  

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
# VueJS_Project_IIM

