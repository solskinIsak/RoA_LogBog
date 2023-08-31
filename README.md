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
##Update til 31-9-2023
Arbejdede videre med at få LED til at blinke ved brug af HTTP side over wifi, jeg formåede at få lys i to andre LED'er ved lidt modificering til den originale kode, men alle 3 LED'er kan ikke lyse uden den ene slukker - viste sig at være en hardware fejl, modstanden gjorde så der ikke var nok volt/strøm til alle 3 LED'er på samme tid, fjerner man modstanden forsvandt problemet.
