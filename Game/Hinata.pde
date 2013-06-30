
/**
* Personnage principal
* Auteur : Manu
*/
public class Hinata
{
  /** Texture de Hinata */
  PImage img;
  
  public Hinata()
  {
    img = loadImage("hinata.jpg"); // Toutes les images doivent être placées dans 'data/'
    if(img == null) // Normalement ça crash tout seul à la compilation si l'image n'existe pas, mais sait-on jamais ;)
      println("Erreur : image d'Hinata introuvable");
  }
  
  /**
   * Fonction d'affichage, on l'appelle manuellement à chaque frame dans le fichier Game
   * Merci de rester gentil avec cette fonction et de ne pas la surgarger de calculs inutiles ;)
   */
  public void display()
  {
    image(img, 0, 0); // Les coordonnées correspondent au point en haut à gauche de l'image
  }
  
  
}
