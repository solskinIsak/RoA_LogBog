# RoA_LogBog
Logbog over indlæring og projekter under 4 semester valgfaget Robotter og Automatisering.

# 22-8-2023:
Vi blev introduceret til vores NodeMCU's samt fik vi til opgave at lege og lave et lille projekt hvor vi skulle få Dioderne indbygget i NodeMCU'erne til at blinke i takt og tempo vi selv vælger.

# 25-8-2023:
Vi lærte om volt, ampere og modstand op til vores trafiklysprojekt og fik udleveret materialerne nødvendigt til projektet.

# 28-8-2023
vi fik lavet første udkast til vores trafiklysprojekt. vi havde lidt en ide til hvordan den skulle laves og efter justeringer så kom vi frem til et svar vi godt vil snakke med tobias om i morgen til undervisningen. vi kom selv frem til løsningen og så ingen videoer eller guides. 

# 29-8-2023
Vi fik udleveret en knap som vi blev bedt om at bruge således at vores nodeMCU kunne registrere når knappen blev trykket på samt at sørge for den kun registreret et enkelt klik ad gangen, vi fik kodet nogle classer og funktioner og kom i mål med dette, herefter fik vi udleveret en variation af interessante dimser som vi hver især i gruppe skal udforske og via "selvlære" få mekanikken til at virke og evt kode nogle klasser som aflevering til torsdag.

# 30-8-2023
Vi fik arbejdet på vores ServoMotor, testet forskellige teorier og kom til sidst i mål med at få lavet en class der i sidste ende blev ret plug-and-play til fremtidigt brug hvilket var godt! - herudover fandt vi ud af at man kan læse den præcise position hvor "armen" på servoen og hvor den befinder sig samt at servoen ikke kan gå under et 850 millis delay eftersom vi også testede på 700 milisekunder og 500 milisekunder men jo kortere delay jo mindre præcis var bevægelsesgangen.
  teorien lyder at der ikke er nok volt for servoenn at arbejde med eftersom at servoenn skal bruge 5V og ESP8266 kun giver 3.3V men sjov og lærerig dag!

  # 31-8-2023
  Idag fik vi til opgave at forsge at oprette en WiFi forbindelse via vores NodeMCU's WiFi chip, det krævede lidt research eftersom at vores Node originalt kørte med en anden Baud rate end vores projekt krævede (9600 og vores projekt krævede 115200) en klar definition på en baud rate er jeg ikke noget frem til endnu, men ved at smide monitor_speed = 115200
ind i vores platformio.ini fil som så sætter vores monitor_speed og oversat til baud rate til de 115200 så blev det gjort muligt via vores kode at oprette forbindelse til et netværk, men kun via mit eget private telefonnetværk, gennem internetdeling var det muligt at få den indbyggede LED til at blinke på Node'n.
## Update til 31-8-2023
Arbejdede videre med at få LED til at blinke ved brug af HTTP side over wifi, jeg formåede at få lys i to andre LED'er ved lidt modificering til den originale kode, men alle 3 LED'er kan ikke lyse uden den ene slukker - viste sig at være en hardware fejl, modstanden gjorde så der ikke var nok volt/strøm til alle 3 LED'er på samme tid, fjerner man modstanden forsvandt problemet.

# 5-9-2023
Idag blev vi introduceret til 3D printerne af tobias samt fik vi installeret OpenSCAD og tobias' overlay til java så vi kan kode i java som vi kender og så bliver det i baggrunden oversat til sprog brugt i OpenSCAD til at vise vores 3D modeller, vi fik arbejdet videre med det efter skole og kom faktisk i mål med at få lavet min helt egen Model af en klods med mit navn som hul igennem modellen, super interessant dag, dejligt at få skrevet i noget java igen og fedt at få brugt OpenSCAD som værktøj, og glæder mig til at få sat noget struktur på.

# 7-9-2023
Idag skulle vi 'lege' med 3D printning, vi sammen med Tobias fik målet, og kodet et program som via det overlay til OpenSCAD kunne lave en 3D model af vores nodeMCU som vi så herefter kunne lave om til et "slot" til vores nodes så den kunne sidde i og så vi havde adgang til dens pins samt - vi fik så stillet opgaven at bruge tobias' kode som udgangspunkt og så upscale modellen til at passe til den store NodeMCU vi også fik udleveret for nogle uger siden. - her fik vi kodet hvad vi mener er de korrekte upscalede dimensioner til den store Node samt fik vi tilføjet vores initialer i bunden af den. På mandag finder vi ud af om det var korrekt beregnet når den er printet færdig.

#19-9-2023
Idag fik vi sammen arbejdet på at lave en universelv og dynamisk måde at implementerer og bruge vores klikke system ved hjælpe fra Tobias, vi fik anvendt både unit og delta measures som skulle gøre det nemmere i fremtiden at justerer og tilpasse de her klikkere og huller til vores andre projekter eller til videre udvikling af tog projektet.

# 21-9-2023
vi fik stillet en SP opgave af Tobias hvor vi skulle tage og andvende det vi havde lært og sat sammen i tirsdags(19-9-2023) og så lave et selvstændigt lille projekt hvor vi bruger klikkere, huller og låse. Jeg har formået at få designet en cube med to låse huller til klikkere samt en troldmandshat som har to runde huller den nødvendige ekstra lange klikker skal gå igennem for at hæfte hatten fast på kassen. Jeg lærte at de dynaimske ændringer og rettelser vi havde brugt dagen i tirsdags på at sidde og lave med tobias virkelig gjorde det en del nemmere at anvende i dette projekt, samt fik jeg anvendt at bruge interfacen vi fik sat op til at kalde de værktøjer(hullere og klikkere) som var nødvendige i dette projekt meget sjovt!

# 26-9-2023 
Vi fik arbejdet videre fra vores brainstorm i sidste uge, på vores projekt der bygger via 3d print, en motor og en fugtmåler en maskine der kan skænke vin op. jeg fik modelleret første del til vores krog, en arm med hul og link.

# 29-9-2023
Jeg fik designet første prototype til en spole i stedet for krog ideen vi startede ud med. Det viste sig at krogen fra den originale ide ikke ville være optimalt da motoren vi bruger ikke kan generere nok kraft til at trække rogen og åbne for vintappen.

# 3-10-2023 
Idag fik jeg designet og modelleret en holder til vores stepmotor som vores nye spole skal monteres fast på, holderen med motoren skal monteres på toppen af vinkassen ved brug af små pigge i bunden af holderen som skal slås ind i pappet og forhåbentligt sidder den nok i spænd til at kunne trække i proppen og åbne vintappen.

# 6-10-2023
Update på spole design. Igen viste det sig at min spole ide var fejlagtig og ikke var den optimale måde at trække vintappen på da designet var fejlagtigt og ikke tog højde for at mængde af kræft og modstand der kommer på "pindende" i spolen snoren skal bindes op om var for svage og ville knække under presset, derudover var ideen med at have pigge under motorholderen også var fejlagtig eftersom at ved nok trækkraft bliver holderen simpelthen trukket ud af pappet. så ny brainstorm om hvordan vi kommer videre med designet fandt sted og vi kom op med ny ide vi sætter igang på mandag, ny spole og ny holder.

# 10-10-2023
Ny holder til stepmotor blev designet nu til at dække hele toppen af vinkassen så der er nok modstand til at holderen ikke bliver trukket af / falder af under press og så har vi total omtænkt vores nye spole til at ligne mere end spole på en fisketang som skal trække viproppen ved brug af fiskesnørre for at åbne tappen. 
## UPDATE til 10-10-2023 SPOLENS CYLINDER I MIDTEN VAR FOR STOR OG KRÆVEDE FOR MEGET KRAFT AT TRÆKKE I VINTAPPEN SÅ VI HAR MINDSKET CYLINDEREN SOM RESULTAT OG SER PÅ MANDAG OM EN MINDRE CYLINDER GIVER NOK KRAFT TIL AT ÅBNE TAPPEN.

# 13-10-2023
Jeg fik 3D printet en skillevæg mellem papvinens tap og kassen selv som skulle fuldføre det formål at holde på tappen når vores pole trækker i snoren og trækker i tappens vinger for at serverer vinen. Men målene var drastisk forkerte og væggen endte med at være ubruelig. Jeg kommer henover ferien til at kode den om eller i hvert fald "re-modellere" den så den har nemmere ved at blive monteret og faktisk kan blive brugt.

# 19-10-2023
Jeg har nu Remoddelleret skillevæggen som nævnt fra tidligere indslag. Jeg har tilføjet en 40mm bred firkant i hullet på væggen som skulle gøre det muligt for tappen at komme igennnem hullet men samtidigt stadig gøre det muligt for plastikken at holde på tappen så vi slipper for at holde fast i tappen manuelt.
## UPDATE til 10-19-2023 - Jeg fik senere på dagen gjort væggene på siden af skildevæggen lidt højere så montering på papvin-kassen er burde være nemmere dennegang.

# 23-10-2023 
Jeg fik færdiggjort skillevæggen mellem vintappen og papvinen, og fik den printet. >> GODE NYHEDER << målene var korrekte og den passede ved første forsøg! så nu kan vinen tappes uden hjælp fra menneske hænder.

# 25-10-2023 
Jeg tilføjede koden til Stepmotoren, fugtighedsmåleren samt nodeMCU'en med tilføjede kommentarer samt puttede kommentarer i koden til alle 3D modellerings delene til vores maskine.

#### OBS DEMO VIDEOER TIL PAPVINS PROJEKTET KAN FINDES HER >> https://github.com/solskinIsak/RoA_LogBog/tree/main/BeerClaw_TheClaw_Project/src/DEMO_VIDEOS 


