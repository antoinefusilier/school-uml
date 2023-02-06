# UML - La modélisation normalisée

![UML_Logo](assets/UML_logo.svg.png)


# Ressources

- [La conception UML 3W Academy PDF](assets/uml.pdf)
- [UML par Tutorials Point](https://www.tutorialspoint.com/uml/)
- [Types de diagrammes UML (lucidchart.com)](https://www.lucidchart.com/blog/fr/types-de-diagrammes-UML)
- [Introduction au langage de modélisation unifié (IBM)](https://developer.ibm.com/articles/an-introduction-to-uml/)

# Exercices
- # [Blog : Mise en place d'un modèle de données pour administrer une plateforme de contenu.](exercises/blog)

# Diagrammes UML Structurels ![icons8-structurel](assets/icons/icons8-structurel-30_white.png)
Les diagrammes UML structurels, comme leur nom l’indique, illustrent la structure d’un système, notamment les classes, les objets, les paquetages, les composants, etc., et les relations entre ces éléments.
- # Diagramme des classes
Représentation du système comme un semble d'objets interagissant
- Définition d'un objet
- Définition d'une classe
- Relation entre les classe

*La forme de la classe à proprement parler se compose d'un rectangle à trois lignes. La ligne supérieure contient le nom de la classe, celle du milieu affiche les attributs de la classe et la ligne inférieure exprime les méthodes ou les opérations que la classe est susceptible d'utiliser. Les classes et sous-classes sont regroupées pour illustrer la relation statique entre chaque objet*
- # Diagramme des composants
*Un diagramme de composants est en réalité une version plus spécifique du diagramme de classes, et les mêmes règles de notation s’appliquent aux deux.*

- # Diagramme de déploiement
*Les diagrammes de déploiement indiquent la manière dont les logiciels sont déployés sur les composants matériels d’un système. Ces visuels sont particulièrement utiles pour les ingénieurs système et ils illustrent généralement les performances, l’évolutivité, la maintenabilité et la portabilité. Lorsque les composants matériels sont représentés les uns par rapport aux autres, il est plus facile de suivre l’ensemble de votre infrastructure informatique et de s’assurer que tous les éléments sont pris en compte lors d’un déploiement.*

- # Diagramme de structure composite
*Ces diagrammes sont en vérité des plans de la structure interne d’un classifieur. Ils peuvent également être utilisés pour illustrer le comportement d’une collaboration ou les interactions du classifieur avec son environnement par le biais des ports. Ils permettent de représenter facilement les composants internes de tout type d’équipement pour mieux en comprendre le fonctionnement.*

- # Diagramme d'objets
*Les diagrammes d’objets présentent des exemples de structures de données à un moment spécifique. Vous pouvez utiliser un diagramme de classes pour représenter une structure, puis des diagrammes d’objets comme scénarios de test pour vérifier que votre diagramme de classes est bien exhaustif. Vous pouvez également créer un diagramme d’objets pour recueillir des informations sur les éléments de modèle et leurs liens.*

- # Les diagramme de paquetage
*Les diagrammes de paquetages sont utilisés pour illustrer les dépendances entre les différents paquetages d’un système. Ces derniers, représentés sous la forme d’un dossier de fichiers, organisent en groupes les éléments de modèle, tels que les cas d’utilisation ou les classes.*

________
# Diagrammes UML Comportementaux

- # Diagramme de temps
*Souvent décrit comme un diagramme de séquence inversé, un diagramme de temps montre comment les objets interagissent entre eux dans un laps de temps donné. Utilisez ces diagrammes pour déterminer la durée de chaque étape d’un processus et identifier les améliorations à apporter.*
- # Diagramme d'aperçu des interaction
*Ce diagramme donne un aperçu du flux de contrôle entre des nœuds en interaction. Ceux-ci incluent les nœuds initiaux, les nœuds finaux de flux, les nœuds finaux d’activité, les nœuds de décision, les nœuds de fusion, les nœuds de bifurcation et les nœuds de jonction.*

- # Diagramme de communication
*Les diagrammes de communication, autrefois appelés diagrammes de collaboration, illustrent les liens entre les objets. Ils modélisent la manière dont ces derniers s’associent et se connectent par le biais de messages dans le cadre de la conception architecturale d’un système. Ils peuvent également représenter des scénarios alternatifs dans des cas d’utilisation ou des opérations qui nécessitent la collaboration de différents objets et interactions.*
- # Diagramme d'états-transitions
*Les diagrammes états-transitions, vous l’aurez deviné, décrivent les états et les transitions. Un état correspond aux différentes combinaisons d’informations qu’un objet peut contenir, et ce type de diagramme UML permet de visualiser tous les états possibles et la manière dont l’objet passe d’un état à l’autre.*
- # Diagramme en cas d'utilisation
*Les diagrammes de cas d’utilisation modélisent la manière dont les utilisateurs, représentés sous forme de figurines appelées « acteurs », interagissent avec le système. Ce type de diagramme UML est une vue d’ensemble des relations entre les acteurs et les systèmes, ce qui en fait un excellent outil pour présenter votre système à un public non technique.*
- Analyse des besoins
- Sénario d'utilisation

- # Diagramme de séquence
*Un diagramme de séquence, parfois appelé diagramme d’événements ou scénario d’événements, montre l’ordre dans lequel les objets interagissent. Ils vous permettent ainsi de représenter visuellement des scénarios d’exécution simples.*

- # Diagramme d'activité
*Les diagrammes d’activités représentent les étapes réalisées dans un cas d’utilisation. Les activités peuvent être séquentielles, ramifiées ou simultanées. Ce type de diagramme UML est utilisé pour montrer le comportement dynamique d’un système, mais il peut également être utile dans la modélisation des processus métier.*