# projet_final

## **I)Partie de Cours**

**Des différents types de tâches :**

L&#39;environnement physique est décrit comme un système fortement parallèle, ce qui
nécessite une architecture de contrôle-commande multitâche pour répondre à ce
comportement parallèle. L&#39;architecture multitâche facilite la conception et la mise en œuvre
d&#39;une application de contrôle-commande et augmente son évolutivité. Une architecture
logicielle multitâche générique pour une application de contrôle-commande peut être
découpée en différents groupes de tâches ou activités.
1) Les tâches d&#39;entrées/sorties (E/S) permettent à un dispositif médical de recevoir des
données externes (via des cartes d&#39;E/S) et de les utiliser pour surveiller ou contrôler
un procédé. Ces données peuvent provenir de capteurs (qui mesurent des quantités
telles que la température, la pression, le niveau de liquide, etc.) ou d&#39;actionneurs
(qui effectuent des actions telles que l&#39;ouverture ou la fermeture d&#39;un robinet,
l&#39;allumage ou l&#39;extinction d&#39;une lumière, etc.).
Les tâches d&#39;E/S peuvent être activées de manière régulière (par exemple, toutes les
10 secondes) ou par interruption (lorsqu&#39;une condition prédéfinie est remplie). Elles
permettent au dispositif médical de réagir rapidement aux changements dans son
environnement ou aux demandes des utilisateurs.
Par exemple, un dispositif de surveillance de l&#39;oxygénation du sang peut utiliser une
tâche d&#39;E/S pour lire en continu les données provenant d&#39;un capteur de saturation en
oxygène et afficher les résultats sur un écran. Si la saturation en oxygène chute en
dessous d&#39;un seuil prédéfini, une tâche d&#39;E/S peut être activée par interruption pour
alerter l&#39;utilisateur et déclencher une action corrective.
2) Les tâches de traitement sont des parties de l&#39;application qui s&#39;occupent de réaliser
des traitements spécifiques sur des données d&#39;entrée. Ces traitements peuvent
inclure l&#39;analyse spectrale de signaux, la corrélation de données, le traitement
d&#39;images, etc. Dans le cadre d&#39;un système de contrôle-commande, ces tâches
peuvent également inclure la mise en œuvre de lois de commande telles que la
régulation tout ou rien, la régulation du premier ordre, la régulation PID, etc. En
général, ces tâches sont considérées comme des &quot;boîtes noires&quot; parce qu&#39;elles sont
censées être indépendantes du reste de l&#39;application et ne nécessitent pas de
connaissances précises sur leur fonctionnement interne pour être utilisées.
Cependant, elles peuvent être liées au reste de l&#39;application par des interfaces
d&#39;entrée et de sortie définies qui permettent de fournir des données d&#39;entrée et de
recevoir des résultats de traitement.
3) Les tâches de gestion de l&#39;interface utilisateur sont des parties de l&#39;application qui
s&#39;occupent de gérer la présentation de l&#39;état du procédé ou de sa gestion à
l&#39;utilisateur. Elles permettent à l&#39;opérateur de modifier les consignes ou les
commandes en fonction de l&#39;état du procédé. Ces tâches peuvent être complexes et
coûteuses en temps de calcul si l&#39;interface gérée est importante (par exemple, un
tableau de bord) ou graphique (par exemple, une représentation 3D). Elles jouent un
rôle important dans la communication entre l&#39;application et l&#39;utilisateur et peuvent
être développées sous différentes formes, comme des interfaces graphiques
utilisateur (GUI) ou des interfaces de ligne de commande.

4) Les tâches de communication sont des parties de l&#39;application qui s&#39;occupent de
gérer les communications entrantes et sortantes de l&#39;application via un ou plusieurs
réseaux ou bus de terrain. Ces tâches permettent à l&#39;application de recevoir et
d&#39;envoyer des messages à d&#39;autres parties du système ou à des périphériques
externes. Si l&#39;application comprend des tâches de communication, elle est
considérée comme distribuée ou répartie, c&#39;est-à-dire qu&#39;elle est capable de
communiquer avec d&#39;autres parties du système ou périphériques de manière
autonome. Les tâches de communication sont généralement utilisées pour gérer les
communications avec des périphériques externes tels que des capteurs, des
actionneurs ou des équipements de contrôle-commande, ainsi que pour échanger
des données avec d&#39;autres parties de l&#39;application ou du système.
5) Les tâches de sauvegarde sont des parties de l&#39;application qui sont chargées de
stocker l&#39;état du système à des instants précis. Ces tâches permettent de
sauvegarder l&#39;état du système à des moments donnés afin de pouvoir l&#39;analyser
ultérieurement ou de reprendre l&#39;exécution de l&#39;application à un moment précédent
en cas de besoin. Les tâches de sauvegarde peuvent être utilisées pour enregistrer
l&#39;état du système à des fins de débogage ou de suivi de performance, ainsi que pour
permettre une reprise en cas de panne ou de défaillance de l&#39;application. Elles
peuvent être mises en œuvre de différentes manières, par exemple en utilisant des
fichiers de sauvegarde sur disque ou en stockant l&#39;état du système dans une base de
données.
L&#39;application de contrôle-commande est composée de différentes tâches ou activités qui
coopèrent pour réaliser le contrôle-commande du procédé géré. Ces tâches peuvent être
regroupées en différents types, comme les tâches d&#39;entrées/sorties, les tâches de
traitement, les tâches de gestion de l&#39;interface utilisateur, les tâches de communication et
les tâches de sauvegarde. Ces tâches ne sont pas des entités d&#39;exécution indépendantes et
peuvent être connectées vers l&#39;extérieur ou liées par des relations de type dépendant de
leur rôle dans l&#39;application.
Types de liaison inter-tâche
1) La synchronisation fait référence à la mise en place de relations de précédence
d&#39;exécution entre les tâches dans une application. Cela signifie que certaines tâches
ne peuvent être exécutées qu&#39;après que d&#39;autres tâches ont été terminées. La
synchronisation peut être utilisée pour gérer les dépendances entre les tâches et
s&#39;assurer que celles-ci sont exécutées de manière cohérente et ordonnée. Elle peut
être mise en œuvre de différentes manières, comme l&#39;utilisation de verrous de

synchronisation, de sémaphores ou de variables de condition. La synchronisation
peut être utilisée pour gérer les accès concurrents à des ressources partagées ou
pour s&#39;assurer que les tâches sont exécutées de manière coordonnée au sein de
l&#39;application.
2) La communication Le transfert de données entre les tâches permet à différentes
tâches de partager des informations et de travailler ensemble pour accomplir une
tâche. Cela peut se faire de différentes manières, comme par exemple en utilisant
des variables partagées ou des mécanismes de communication tels que les pipes ou
les sockets. Le transfert de données est un élément important de la communication
entre les tâches dans un système d&#39;exploitation, car il permet de coordonner les
tâches et de gérer les interactions entre elles.
3) Partage de ressources : Les systèmes d&#39;exploitation permettent à différentes tâches
de partager des ressources comme la mémoire, les entrées/sorties, les cartes réseau,
etc. Cependant, certains de ces éléments peuvent ne pas être accessibles, ou ne
doivent pas être accessibles, par plus d&#39;une tâche à la fois, car cela pourrait entraîner
des erreurs ou des conflits. Ces ressources sont appelées ressources critiques et il est
important de les gérer de manière à éviter les conflits et à assurer le fonctionnement
correct du système. La synchronisation des tâches est souvent utilisée pour contrôler
l&#39;accès aux ressources critiques et garantir que chaque tâche a un accès exclusif aux
ressources dont elle a besoin.
Les tâches en temps réel
Les tâches en temps réel sont des tâches qui doivent être exécutées dans un délai précis
et qui ne peuvent pas être retardées par d&#39;autres tâches. Elles sont souvent utilisées
dans les systèmes où le temps réel est crucial, comme les systèmes de contrôle
industriels, les systèmes de navigation, etc. Pour garantir le respect des délais, les tâches
en temps réel ont souvent une priorité plus élevée que les autres tâches et sont
exécutées en premier. Les tâches en temps réel peuvent être exécutées sur un dispositif
embarqué, c&#39;est-à-dire un appareil autonome qui incorpore un microprocesseur et qui
est conçu pour être utilisé dans un système spécifique. Les dispositifs embarqués sont
souvent utilisés dans les applications industrielles et de contrôle, car ils permettent de
mettre en œuvre des fonctionnalités de temps réel de manière efficace.
1) Tâche périodique est une tâche qui est exécutée de manière répétée à intervalles
réguliers. La période T est l&#39;intervalle de temps entre deux exécutions successives de
la tâche. Par exemple, si la période T d&#39;une tâche est de 10 secondes, alors la tâche
sera exécutée toutes les 10 secondes. Les tâches périodiques sont souvent utilisées
dans les systèmes où il est important de surveiller ou de contrôler un processus de
manière régulière. Elles peuvent être exécutées sur un ordinateur ou sur un
dispositif embarqué.
2) Tâche dépendante est une tâche qui dépend de l&#39;exécution d&#39;une ou plusieurs
autres tâches pour être complétée. Elle peut être liée à d&#39;autres tâches par des
contraintes de précédence, ce qui signifie qu&#39;elle ne peut être exécutée qu&#39;après que
les autres tâches ont été exécutées. Elle peut également dépendre de l&#39;accès à

certaines ressources partagées, comme la mémoire ou les entrées/sorties. La gestion
des tâches dépendantes est importante pour s&#39;assurer que les tâches sont exécutées
dans le bon ordre et que les ressources sont utilisées de manière efficace.
3) Tâche apériodique ou sporadique est une tâche qui n&#39;est pas exécutée de manière
régulière et périodique, mais qui s&#39;exécute plutôt à la demande ou sous certaines
conditions spécifiques. Par exemple, une tâche apériodique peut être exécutée sur
demande de l&#39;utilisateur, en réponse à une erreur détectée dans le système, ou
encore lorsqu&#39;une condition spécifique est remplie. Les tâches apériodiques sont
souvent utilisées dans les systèmes où il est important de réagir rapidement aux
événements ou aux conditions changeantes. Elles peuvent être exécutées sur un
ordinateur ou sur un dispositif embarqué.
4) Les tâches indépendantes sont des tâches qui ne dépendent pas de l&#39;exécution
d&#39;autres tâches ou de l&#39;accès à des ressources partagées. Elles peuvent être
exécutées de manière autonome et ne nécessitent pas de synchronisation avec
d&#39;autres tâches. Les tâches indépendantes sont souvent utilisées dans les systèmes
où il est important de maximiser l&#39;utilisation du processeur et de réduire les temps
d&#39;attente. Elles peuvent être exécutées sur un ordinateur ou sur un dispositif
embarqué.

Des caractéristiques temporelles d&#39;une tâche :
1) La durée d&#39;exécution est le temps nécessaire à la tâche pour être complétée une fois
qu&#39;elle a été lancée.
2) La cadence de répétition est la fréquence à laquelle une tâche est exécutée. Pour les
tâches périodiques, cela correspond à la période T décrite précédemment.
3) La date au plus tôt est la date à laquelle une tâche peut être lancée au plus tôt, en
tenant compte de ses dépendances et de ses contraintes de temps.
4) La date au plus tard est la date à laquelle une tâche doit être complétée au plus
tard, en tenant compte de ses dépendances et de ses contraintes de temps.
5) La date de démarrage est la date à laquelle une tâche est effectivement lancée.
6) La date de fin est la date à laquelle une tâche est effectivement complétée.
7) Le temps de réponse est le temps écoulé entre la demande de lancement d&#39;une
tâche et sa date de démarrage effective.
Ces caractéristiques temporelles sont importantes pour planifier et gérer les tâches dans un
système d&#39;exploitation. Elles permettent de définir les délais et de s&#39;assurer que les tâches
sont exécutées de manière efficace et en respectant les délais.
Tâche non préemptible ou préemptible :
 Une tâche non préemptible est une tâche qui ne peut être interrompue que
lorsqu&#39;elle atteint un certain point de sa séquence d&#39;exécution, comme la fin de la
tâche ou un point d&#39;attente de signal. Ces points sont choisis par le développeur de
l&#39;application et sont généralement utilisés pour permettre à la tâche de libérer des
ressources critiques ou de synchroniser son exécution avec d&#39;autres tâches. Les

tâches non préemptibles sont plus simples à programmer car elles ne nécessitent
pas de mécanismes de gestion de ressources critiques et de synchronisation.
Cependant, elles peuvent entraîner des temps de réponse plus longs si elles sont
bloquées pour une raison quelconque et ne peuvent pas être interrompues par
d&#39;autres tâches. En revanche, les tâches préemptibles peuvent être interrompues à
tout moment et permettent un meilleur partage des ressources, mais elles
nécessitent une programmation plus complexe pour gérer les points de préemption
et les ressources critiques.
 Une tâche préemptible est une tâche qui peut être interrompue à tout moment par
le système d&#39;exploitation et remplacée par une autre tâche. Cela permet un meilleur
partage des ressources et des temps de réponse plus courts aux événements
externes, car le processeur peut être affecté à une autre tâche dès qu&#39;une nouvelle
demande de traitement est présentée. Cependant, la programmation de tâches
préemptibles est plus complexe, car il est nécessaire de gérer les points de
préemption et de s&#39;assurer que les ressources critiques sont partagées de manière
adéquate pour éviter les conflits d&#39;accès

## **II) Présentation du projet**
L’apnée du sommeil est un trouble de la ventilation nocturne se présentant par des pauses
respiratoires anormalement fréquentes. Elle survient à cause d’obstructions répétées des
conduits respiratoires de l’arrière-gorge.
Ces pauses de respiration durent de 10 à 30 secondes, voire plus, se produisent au moins 5
fois par heure de sommeil et peuvent se répéter une centaine de fois par nuit.
En France, l’apnée du sommeil touche 4% de la population. Elle est associée à des
ronflements et à de la somnolence diurne. Sur le long terme elle peut causer des troubles
cardiovasculaires. Pour la dépister, il faut réaliser une polygraphie ventilatoire. C’est un
examen qui a pour but d’évaluer toutes les caractéristiques du sommeil telles que le débit
inspiratoire et expiratoire, les efforts respiratoires, la fréquence cardiaque, la teneur en
oxygène du sang ou encore le temps de transit du pouls. Ces valeurs sont mesurées grâce à
une ceinture au niveau de l’abdomen, une ceinture au niveau du thorax, un oxymètre et une
lunette nasale. Ce dispositif est plutôt encombrant mais il est très utile pour le diagnostic du
médecin. Souvent le patient ne reçoit les résultats que sous la forme d’un document avec le
compte des apnées durant la nuit et l’analyse qui en découle.
Nous avons donc imaginé qu’il pourrait être possible de réduire ce dispositif en utilisant un
simple capteur au bout du doigt pour mesurer la fréquence cardiaque, la teneur en oxygène
et le temps de transit du pouls. Ces données pourraient ainsi être une base pour compter le
nombre d’apnée au cours de la nuit. Cela pourrait aussi devenir un outil du quotidien pour
le patient. En effet, grâce à une application, il permettrait au patient de voir ce qu’il se passe
durant son sommeil.
C’est ce que nous avons essayé de faire dans ce projet.

## **III) Réalisation du projet**
a) Cahier des charges

Notre but est donc de réaliser un dispositif médical composé d’un système embarqué
permettant la mesure du rythme cardiaque et du taux d’oxygène dans le sang et d’une
application mobile permettant la consultation des données.
Pour cela nous allons utiliser une carte Arduino Uno avec un Shield Bluetooth pour quelle
puisse communiquer avec notre application. Pour les mesures, nous allons utiliser un
capteur de pulsation cardiaque KY-039. Nous allons utiliser deux lampes pour représenter le
battement cardiaque mais aussi pour vérifier que le capteur est bien branché et qu’il est
placé correctement. Nous aurions préféré travailler avec une puce MAX30100 mais un souci
de matériel nous a empêché de le faire.
Concernant l’application, il s’agira d’une application mobile codée en Flutter et réalisée sous
Android Studio.

b) Résultats obtenus

Tout d’abord, nous avons réussi à créer un montage avec notre capteur KY-039. Nous
l’avons branché à la prise 5V et à la masse de la carte Arduino pour son alimentation et à la
broche AO pour assurer une communication en analogique entre la carte et le capteur. Nous
avons ajouté deux LED, une verte et une rouge, grâce à deux résistances. Ces deux LED
serviront à suivre les battements cardiaques.

![image](https://github.com/NinhLan/projet_dispositif/assets/82390818/a0697fd2-5bd6-415f-9b65-793c9b4e0413)

Figure 1 : Photo du montage

Nous avons développé un script sur Arduino pour gérer les différents composants de notre
système. Nous utilisons deux librairies : la librairie SoftwareSerial pour la connexion
Bluetooth et la librairie PulseSensorPlayground pour travailler avec le capteur KY-039. Nous
avons une fonction pour configurer la connexion de la carte Bluetooth et nous configurons
le capteur. Ensuite, toutes les 20 millisecondes, nous demandons à la carte Arduino de
récupérer les valeurs du capteur et de les envoyer via Bluetooth.
Nous avons ensuite notre application flutter qui utilise le package flutter_bluetooth_serial.
Nous avons d’ailleurs utilisé l’exemple d’application fournit par cette librairie pour créer la
nôtre. Elle est composée d’une page d’accueil, d’une page servant à la connexion avec un
appareil en Bluetooth et d’une page permettant de visualiser l’affichage des données en
temps réel via trois courbes : une pour les pulsations cardiaques, une pour l’évolution du
pouls et une pour l’intervalle entre les battements.

![image](https://github.com/NinhLan/projet_dispositif/assets/82390818/aa1a2bbf-bc05-4566-a85a-60a427346148)

Figure 2 : Schéma du montage


![image](https://github.com/NinhLan/projet_dispositif/assets/82390818/9b440b34-24a0-42a0-874b-293411473859)


c) Problèmes rencontrés

Tout d’abord, nous avons eu un problème avec la première puce que nous voulions utiliser.
En effet, nous voulions travailler avec une puce MAX30100 qui permet de mesurer à la fois
les pulsations cardiaques et l’oxygénation du sang. Il s’avère qu’il existe deux versions de
cette puce : la RCWL-0530 et la GY-MAX30100. Le problème étant que la seconde est prévue
pour être branché sur une carte Arduino facilement car son montage est prévu pour ne pas
nécessiter une alimentation de 1,8V, ce qui n’est pas le cas de la première. Nous n’avions
pas connaissance de cette information avant de commander la puce et nous avons
commandé la puce la plus courante. Nous nous sommes retrouvés avec une puce qui ne
pouvait pas fonctionner tel quel avec un Arduino mais modifiable. Nous avons essayé de
procéder à ces modifications sans succès.

![image](https://github.com/NinhLan/projet_dispositif/assets/82390818/1eb7a56c-f5a9-42d4-9713-ecd998ce9bae)
Figure 3 : GY-MAX30100

![image](https://github.com/NinhLan/projet_dispositif/assets/82390818/85ac582f-1964-4057-ba2b-bf30e43e956e)
Figure 4 : MAX30100 RCWL-0530

Nous avons rencontré aussi quelques difficultés à adapter le code pour afficher les
graphiques et pour l’adapter à notre situation. Il y a d’ailleurs un problème persistant pour
l’affichage des pulsations cardiaques. En effet, les variations et l’amplitude des valeurs à
présenter sont possiblement trop importantes pour le code utiliser. Le temps de défilement
n’est pas assez rapide pour avoir un affichage fluide. Nous nous sommes beaucoup trop
concentrés sur cette partie et nous n’avons par conséquent pas eu le temps de travailler sur
la détection des apnées.

## **Conclusion**
En conclusion, nous pouvons dire que nous avons réussi à utiliser un nouveau capteur et à
mesurer des informations pertinentes avec. Nous avons pu connecter notre système
embarqué en Bluetooth à une application Flutter qui nous a permis d’afficher des
graphiques qui suivent en temps réel les données reçus.

Cependant, ils restent des corrections nécessaires comme celle du graphique des pulsations
cardiaques et de l’ajout du compte des apnées.

Il serait possible d’améliorer notre prototype en ajoutant une base de données pour
sauvegarder les valeurs mesurées et permettre un suivi dans le temps du sommeil du
patient. On peut aussi envisager la mise en place d’une IA qui analyserait ces données et
donc le sommeil du patient. Il serait aussi possible de pousser l’interface graphique pour
qu’elle soit plus belle.
