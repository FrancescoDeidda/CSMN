clc
clear
%Dichiarazione delle variabili
%Con ; evito che vengano stampati i valori relativi a quelle righe di
%codice
menu1 = "pizza";
menu2 = "spaghetti";
menu3 = "pesce spada";

prezzo1 = 6;
prezzo2 = 5;
prezzo3 = 9;

piatto = input("Scegli il piatto:\n pizza\n spaghetti\n pesce spada\n","s");

switch piatto
    case menu1
        fprintf("Il prezzo della " + menu1 + " è " + prezzo1 + "€\n")
    case menu2
        fprintf("Il prezzo degli " + menu2 + " è " + prezzo2 + "€\n")
    case menu3
        fprintf("Il prezzo del " + menu3 + " è " + prezzo3 + "€\n")
    otherwise
        fprintf("Piatto non presente\n")
end



