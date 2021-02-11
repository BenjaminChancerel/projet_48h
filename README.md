# projet 48h

1.  [Description du projet](##Description)

2.  [Liste des fonctionnalités](##Fonctionnalités)

3.  [Comment cloner le projet](##Cloner-le-projet)

## Description 

On connait tous le sketch de Gad Elmaleh sur ikea : “ on a toujours 3 vis en trop a la fin dont on sait pas quoi faire avec “. Mais parfois il nous reste du ciment, des planches de bois, 5 carreaux de carrelage qui partent à la déchetterie. 

Ce problème revient de manière récurrente lorsque que l’on fait du bricolage : les pièces de rechanges qui s’accumulent, les perceuses offertes en cadeaux qui prennent la poussière sur l’étagère. De même en artisanat, le surplus de matériaux à la fin du projet est un handicap.

__Que faire alors pour contrer ce phénomène ?__

Pour cela, nous proposons une plateforme web “C to C” (de particulier à particulier). En effet, cette nouvelle plateforme de ManoMano permettra de revendre des outils ou des matériaux dans le but de leur accorder un second souffle dans les mains d’un nouveau particulier.

La cible principale est le client : le bricoleur du dimanche et l'artisanat. Ils  pourront vendre leurs produits achetés sur le site. Le second bénéficiaire est ManoMano qui pourra toucher une somme venant du client qui paye pour afficher son produit sur le site. Puis le troisième bénéficiaire est l’acheteur qui paiera un produit moins cher au lieu d’acheter un produit neuf.

Plus il y aura d'utilisateurs qui mettront des produits sur le site, plus ManoMano sera rentable. Le vendeur gagne du temps pour se débarrasser de son produit et libère de la place dans son garage/entrepôt. De plus, pour attirer l’attention du client régulier de ManoMano, celui-ci aura la possibilité de gagner des points de fidélités sur le site.

__Comment mettre en place notre solution ?__

Les ressources nécessaires pour développer la solution sont la mise en place d’un site marketplace : vente, achat, poste d’article, et fidélisation.
Cela nécessitera-t-il comme tout site web, un serveur, des experts en charge de la maintenance du site comme de son développement.

Le business model mis en place est de “De particulier à Particulier”. C'est-à-dire que ce modèle se base sur le fait qu'une entreprise se spécialise dans la médiation entre des individus faisant partie d'un même groupe homogène. L'entreprise offre un point de rencontre, comme une base de données en ligne avec des instruments de communication qui mettent en relation les individus entre eux.

Dans le but de réaliser ce projet, il nous faudra les compétences et l'organisation de développeurs web : Un webdesigner (responsable de la mise en page du site), un référenceur (capable de référencer le site afin d’avoir une bonne visibilité sur le web), un 



développeur back (responsable de l’architecture et de la mise en place du projet) et enfin d’un webmarketeur (dans le but d'augmenter le trafic et les ventes d'un site internet).

Afin de mener à terme notre solution, il nous faudra établir plusieurs tâches : un devis, un cahier des charges, la liste des fonctionnalités du site, des maquettes, des diagrammes et enfin un plan d’action avec une date de livraison.
Ensuite nous pourrons alors commencer le développement de notre site tout en suivant notre plan d’action mais aussi en s’adaptant afin de surmonter les imprévus.

__Pourquoi notre solution est-elle bonne pour ManoMano ?__

Le projet JamoMano s’inscrit dans l’esprit de ManoMano car il remplit les critères suivants : l’audace pour la confiance donnée aux particuliers. L’’ingéniosité par son système de fidélisation et d’autosuffisance. Enfin la bienveillance en accompagnant le client une fois son projet terminés en lui proposant une solution de “recyclage”.

## Fonctionnalités :

__Le site se compose obligatoirement des pages suivantes :__

-	Page d'accueil 
-	Page produit (description et avis) 
-	Page du panier d’achat 
-	Page d’espace client 
-	Page d’inscription / connexion

__L'administration se compose obligatoirement des pages suivantes :__ 

-	Page tableau de bord 
-	Page des membres 
-	Page des produits 
-	Page de connexion

__Fonctionnalités Opérationnelles à ce jour :__

-	Liste des articles 
-	Création de compte/connexion (avec information sur le compte) 
-	Page produit qui contient : l'image de l'article / le nom de l'article / le prix de l'article /            les avis des acheteurs / un bouton d’achat 

__Fonctionnalités Non Opérationnelles à ce jour : (en cours de développement)__

-	Système de recherche
-	Système pour poster ces articles dans le but de les vendres
-	Un email automatique est envoyé à l’acheteur après la vente avec : la facture en pdf 
-	un espace administrateur mis en place avec authentification   

-	Un tableau de bord est présent dans l’espace administrateur avec des informations tels que : nombre de membres / nombre de ventes / nombre de nouvelles ventes sur les 7 derniers jours / les revenus du site totaux / les revenus du site sur les 7 derniers jours 

-	Les administrateurs peuvent gérer les articles avec un CRUD

## Cloner le projet 

Tout d'abord vous devez installez __symfony__, __composer__, __nodeJS__ et __yarn__ aux adresses suivantes :

*   [symfony](https://symfony.com/download)
*   [composer](https://getcomposer.org/download/)
*   [nodejs](https://nodejs.org/fr/download/)
*   [yarn](https://classic.yarnpkg.com/en/docs/install/#windows-stable)

Vous devez également installer __XAMPP__ ou un équivalent(MAMMP par exemple)

Après avoir récupérer le projet sur git, et avoir lancer votre terminal dans le bon dossier. Vous faites les commandes suivantes :

```
composer require symfony/swiftmailer-bundle
composer require symfony/webpack-encore-bundle --dev
yarn install
yarn add @symfony/webpack-encore --dev
yarn add sass-loader@^9.0.1 node-sass --dev
npm uninstall node-sass
npm install node-sass@4.14.1
yarn encore dev
```

Créez la BDD avec les commandes (Changer le .env si besoin) :

```
symfony console doctrine:database:create
symfony console doctrine:migrations:migrate
```

Ensuite aller sur l'adresse suivante :

*   http://localhost:8080/phpmyadmin/

Cliquez sur la base de donnée nowaste qui vient d'être créée. Cliquez sur importer, et importez le fichier .sql qui se trouve dans le git.

Enfin lancer votre server avec la commande :
``symfony server:start``

Allez à cet url :
http://127.0.0.1:8000/debut
