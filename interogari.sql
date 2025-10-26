
SELECT nume, email FROM Clienti WHERE data_inregistrarii >= CURDATE() - INTERVAL 1 MONTH;


SELECT nume_produs, pret FROM Produse WHERE pret > 100 AND stoc > 0;


SELECT
    c.id_comanda,
    cl.nume AS nume_client,
    SUM(p.pret * dc.cantitate) AS total_comanda
FROM Comenzi c
JOIN Clienti cl ON c.id_client = cl.id_client
JOIN DetaliiComanda dc ON c.id_comanda = dc.id_comanda
JOIN Produse p ON dc.id_produs = p.id_produs
GROUP BY c.id_comanda, cl.nume
ORDER BY total_comanda DESC;