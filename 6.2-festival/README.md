# Exercice Festival

Réalisation d'une application Web des gestion des réservations et présentation d'un festival

# Sommaire

- [1.0-Étude avant conception](./1-study)
     - [1.1- Définition des utilisateurs]()
     - [1.2- Définition des environnement du/des système(s)]()
     - [1.3- Définition des limites du/des système(s)]()
- [2.0-Diagrammes d'utilisation](./2-usage_diagram)
     - [2.1- Cas d'utilisation pour un visiteur non authentifié](./2-usage_diagram/usage_diagram_visitor.png)

          - **SingUp** : Création d'un compte client
               - **Systeme** : Web App Public
               - **Scénario** : *L'utilisateur lance un évènement "signup", qui appel un composant. Il sera demandé soit l'identifaction avec un compte Google, Facebook, Github directement ou via un formulaire (email, nom, prénom, date de naissance). Pour l'enregistrement via formulaire, l'utilisateur recevra un lien d'activation par Email qui le rediregera vers la Web App lui affichant son mots de passe qu'il pourra copier.*
               - [**Diagramme d'activité**]()
               - [**Diagramme de séquence**]() 
               - [**Diagramme des classes**]() 

          - **SingIn** : Connexion à un compte utilisateur
          - **AutoConnect** : Module de détection en fonction de l'adresse IP ou des données stockés en localStorage ou cookies d'identification pour lancer automatiquement un processus d'authentification
          - **Cookies** : Visualiser, autoriser ou non les différents cookies de la web app
          - **Search** : Module principale de recherche, affiches les premiers résultats asynchrone dans un composants sous la barre de recherche, ou si action utilisateur, redirige vers la page recherche ou vers une autre page trouvée correspondante
          - **CallComponent** : Module de gestion des composant
          - **NewsletterRegistration** : Lancer un processus d'enregistrement au Newsletter de la web app

     - [2.2- Cas d'utilisation pour un client authentifé]()
          - **newOrder** : Passer une nouvelles commande
               - **Système** : Web App
               - **Sénario** : *Le client envoie un évenement (click) de validation de son panier, avec les différents billets paramétré(adulte|enfant,quantité). Fait suivre les confirmation des coordonnées (adresses de facturation, nom etc..)*
               - [**Diagramme d'activité** (en cours)]()
               - [**Diagramme de séquence** (en cours)]() 
               - [**Diagramme des classes** (en cours)]() 
          - **orderPaiement** : Lancer un processus de paiement pour régler une commande 
               - **Système** : Web App
               - **Sénario** : *(a faire)*
               - [**Diagramme d'activité** (en cours)]()
               - [**Diagramme de séquence** (en cours)]() 
               - [**Diagramme des classes** (en cours)]() 
          - **accountOrders** : Visualiser, Imprimer l'ensemble des commandes de son compte
          - **accountInfos** : Visualiser et modifier les coordonnées et informations général de son compte client
          - **accountProfil** : Visualiser et modifer son profil 
          - **accountLikes** : Visualiser et modifier les tags et groupes de tags associés à son compte
          - **accountSetting** : Définition des paramètres **Cookies**, **Newsletter**, **EmailReminder**, **Notifications**, **ColorMode**
     - [2.3- Cas d'utilisation pour un Web Master]()
          - **cmsPageManagment** : Gestion des pages et de leur position dans le menu
          - **cmsArticleManagment** : Gestion des articles 
          - **artistManagment** : Gestion de la base Artistes
          - **artistGroupManagment** : Gestion de la base des groupes d'artiste
          - **sceneManagment** : Gestion des scènes d'une éditions
          - **eventManagment** : Gestion des concerts
               - **Système** : Dashboard
               - **Sénario** : *Un Web Master se rendant dans le dashboard, sur la page concerts peut visualiser tous les concert(dit: "event"). Il aura accès à plusieurs fonctionnalité de création, planification, modification ou suppression d'un concert. Un concert portera les information: trois images reponsive de fond,un titre, une description, le(s) artiste(s)/groupe(s) d'artiste(s) associé, la scène affectée, une date et heure de début, une date et heure de fin, des tags, *
               - [**Diagramme d'activité** (en cours)]()
               - [**Diagramme de séquence** (en cours)]() 
               - [**Diagramme des classes** (en cours)]()
          - **editionManagment** : Gestion des différentes éditions du festival
         
     - [2.4- Cas d'utilisation pour d'un Responsable Service Client]()
          - **customerOrdersManagment** : Accès total au commandes d'un client
          - **customerOrdersPaiementManagment** : Accès total au processus de paiement en cours d'un client
          - **customerProfilManagment** : Accès total au profil d'un client
          - **customerSettingManagment** : Accès total au paramètre d'un compte client
          - **ticketBankServices** : Module d'édition et suivi de ticket en le site les prestataires de paiement en cas d'erreurs ou de litiges
               - **Système** : Dashboard
               - **Sénario** : *(a faire)*
               - [**Diagramme d'activité** (en cours)]()
               - [**Diagramme de séquence** (en cours)]() 
               - [**Diagramme des classes** (en cours)]()
          - **juridicsPost** : Module d'envoie des toutes les informations juridique au clients exigents, agence de presse ou autre

     - [2.5- Cas d'utilisation pour un Super Administrateur]()
          - **userManagment** : Gestion de n'importe qu'elle type de compte utilisateur
               - **Système** : Dashboard
               - **Sénario** : *(a faire)*
               - [**Diagramme d'activité** (en cours)]()
               - [**Diagramme de séquence** (en cours)]() 
               - [**Diagramme des classes** (en cours)]()
          - **bankServiceManagment** : Gestion des informations de connexion au services externes de paiement 
          - **dnsConfig** : Gestion des paramètres DNS de l'hébergement 
          - **domainConfig** : Gestion du nom de domain
          - **logs** : Affichage de toutes les fonctions, connexions, erreur et flux de données 
          - **motorsSettings** : Gestion des paramètres des moteurs de recherche et de référencement 

     - [2.6- Cas d'utilisation pour ]()

- [3.0-Diagrammes d'activités](./3-activity_diagrams/)
     - [3.z SignUp](./3-activity_diagrams/activity_diagram_signup.png)
     - [3.z HttpSecure]()
     - [3.z AutoConnect]()
     - [3.z SingIn]()
     - [3.z Cookies]()
     - [3.z SelectPage]()
     - [3.z Search]()
     - [3.z CallComponent]()
     - [3.z NewsletterRegistration]()


          ```ts
          type Visitor = {
               access: enum('webapp', 'dashboard'),
               informations: {
                    ip_adress: string,
                    country: string,
               },
               routesRequests: {
                    pagesViewedIds: Array<string>,
                    articlesViewedIds: Array<string>,
                    artistsViewsIds: Array<string>,
                    artistGroupsViewedIds: Array<string>,
                    eventsViewedIds: Array<string>,
                    componentsViewsIds: Array<string>,
               },
               session: {
                    startTime: date,
                    token: string, 
                    public_key: string
               },
               cookies: {
                    [...]
               }

          }```