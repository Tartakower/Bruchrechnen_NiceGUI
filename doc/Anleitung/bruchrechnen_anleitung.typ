#import "../normaltext.typ": normaltext
#import "../titelseite.typ": titelseite
#import "../inhaltsverzeichnis.typ": toc
#import "../ueberschriften.typ": ueberschriften
// #import "kapitel.typ": kapitel

#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#show: codly-init.with()

#set text(lang: "de")

#show: doc => titelseite("Bruchrechnen mit Python", "Ein Hackathon", "Polu Tartakower", "Kiel, September 2025", doc)

#show: toc
#set page(numbering: "1")
#show: ueberschriften
#show: normaltext

#include "anleitung_uebersicht.typ"
#include "anleitung_entwicklungsumgebung.typ"
#include "anleitung_ide.typ"
#include "anleitung_projekt.typ"
#include "anleitung_architektur.typ"
#include "anleitung_ggt.typ"
// #show: doc => kapitel("ooad_bruch", doc)
// #show: doc => kapitel("klasse_bruch", doc)
// #show: doc => kapitel("gui",  doc)
// #show: doc => kapitel("klasse_zahl", doc)