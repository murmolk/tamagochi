// Ce fichier est appelé en premier et contient toute la partie principale du programme !

Hinata hinata; // Personnage principal

// Cette fonction est appelée au lancement du programme
void setup()
{
  size(800, 800); // Crée une fenêtre 400x400
  hinata = new Hinata();
}

// Cette fonction est appelée à chaque frame
void draw()
{
  hinata.display();
}
