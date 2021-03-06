# Lezione 2

__Data__: 05/11/2020

## Argomenti

- Networking: modello a strat (layer) ISO/OSI e modello IP
  - Livello fisico: mezzi di comunicazione
  - Livello Data Link: affidabilità dei messaggi, Frame, MAC Address
  - Livello Rete: instradamento, indirizzi IP
    - Configurazione di rete: indirizzo IP, subnet mask, gateway
    - Routing
  - Livello trasporto: TCP e UDP, porte
  - Livello applicativo: servizi di rete
- Protocolli e Servizi di rete
  - DNS e nomi di dominio
  - DHCP e autoconfigurazione della rete
  - SMTP per lo smistamento della posta elettronica
  - FTP per il trasferimento di file
  - SSH e RDP per il controllo remoto
  - HTTP per il trasferimento di testo

## Strumenti utilizzati (ambiente Windows CMD)

- __ipconfig__: mostra la configurazione di rete
- __ping__: verifica la raggiungibilità di un punto nella rete (utilizzando il protocollo ICMP)
- __tracert__: rileva la traccia dell'attraversamento dei router da una sorgente ad una destinazione
- __nslookup__: permette di interrogare un server DNS per ottenere indirizzi IP da nomi di host
- __netstat__: permette di visualizzare quali porte TCP o UDP sono in uso su un sistema
- __Wireshark__: programma di packet capture che permette di analizzare i pacchetti in transito dal livello Data link in su

## Esercitazioni

- [Esercizio 2](/modulo-01/esercizio-2.md): utilizzare i comandi del sistema operativo per otterenere informazioni sulla rete

## Riferimenti, bibliografia, sitografia

- https://it.wikipedia.org/wiki/Modello_OSI
- https://it.wikipedia.org/wiki/Suite_di_protocolli_Internet
- https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
- https://it.wikipedia.org/wiki/Domain_Name_System
- https://it.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol
- https://it.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol
- https://it.wikipedia.org/wiki/Hypertext_Transfer_Protocol