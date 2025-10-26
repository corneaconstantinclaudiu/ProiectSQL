
CREATE TABLE Clienti (
    id_client INT PRIMARY KEY AUTO_INCREMENT,
    nume VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_inregistrarii DATE
);


CREATE TABLE Produse (
    id_produs INT PRIMARY KEY AUTO_INCREMENT,
    nume_produs VARCHAR(100) NOT NULL,
    pret DECIMAL(10, 2) NOT NULL,
    stoc INT
);


CREATE TABLE Comenzi (
    id_comanda INT PRIMARY KEY AUTO_INCREMENT,
    id_client INT,
    data_comenzii DATE,
    FOREIGN KEY (id_client) REFERENCES Clienti(id_client)
);


CREATE TABLE DetaliiComanda (
    id_detaliu INT PRIMARY KEY AUTO_INCREMENT,
    id_comanda INT,
    id_produs INT,
    cantitate INT,
    FOREIGN KEY (id_comanda) REFERENCES Comenzi(id_comanda),
    FOREIGN KEY (id_produs) REFERENCES Produse(id_produs)
);