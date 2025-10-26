# Proiect Bază de Date - Magazin Online

Acest proiect demonstrează modelarea unei baze de date relaționale simple pentru un magazin online, folosind SQL.

## Structura Bazei de Date

Baza de date este formată din 4 tabele principale:
- **Clienti**: Stochează informații despre utilizatorii înregistrați.
- **Produse**: Conține detalii despre produsele disponibile.
- **Comenzi**: Înregistrează fiecare comandă plasată de un client.
- **DetaliiComanda**: O tabelă de legătură care asociază produsele și cantitățile corespunzătoare fiecărei comenzi.

Fișierul `schema.sql` conține codul pentru crearea acestor tabele.

## Exemple de Interogări

Fișierul `interogari.sql` include exemple de interogări SQL complexe pentru a extrage informații relevante, cum ar fi:
- Găsirea clienților recenți.
- Filtrarea produselor după preț și stoc.
- Calcularea valorii totale pentru fiecare comandă.