
/**
* Bouton d'interface cliquable
* Auteur : Manu
*/

public class Button
{
  /** Position du bouton */
  private PVector position; // PVector est un objet propre à processing qui contient une variable x et y
  
  /** Etat du bouton. Prend une des 4 constantes définies */
  private int state;
  
  /** Bouton standard */
  public static final int STATE_STANDARD = 0;
  /** Bouton survolé */
  public static final int STATE_OVERED = 1;
  /** Bouton cliqué */
  public static final int STATE_CLICKED = 2;
  /** Bouton grisé */
  public static final int STATE_BLOCKED = 3;
  
  /** Nombre d'états que peut prendre le bouton */
  private final int NB_STATES = 4;
  
  /** Textures du bouton */
  private PImage[] img; // TODO: Faire une version optimisée basée sur une seule texture en spritesheet
  
  /** Texture du bouton cliqué */
  private PImage clickedImg;
  
  /** 
  * Si un bouton n'a pas besoin de l'image demandée, mettre une chaîne vide
  */
  public Button(String standardImgPath, String overedImgPath, String clickedImgPath, String blockedImgPath, int firstState, PVector pos) // Toutes les images doivent être placées dans 'data/'
  {
    img = new PImage[NB_STATES];
    state = setState(firstState);
    position = pos;
    if(standardImgPath != "")
    {
      img[STATE_STANDARD] = loadImage(standardImgPath);
      if(img[STATE_STANDARD] == null)
        println("Erreur : image standarde du bouton introuvable");
    }
    if(overedImgPath != "")
    {
      img[STATE_OVERED] = loadImage(overedImgPath);
      if(img[STATE_OVERED] == null)
        println("Erreur : image survolée du bouton introuvable");
    }
    if(clickedImgPath != "")
    {
      img[STATE_CLICKED] = loadImage(clickedImgPath);
      if(img[STATE_CLICKED] == null)
        println("Erreur : image cliquée du bouton introuvable");
    }
    if(blockedImgPath != "")
    {
      img[STATE_BLOCKED] = loadImage(blockedImgPath);
      if(img[STATE_BLOCKED] == null)
        println("Erreur : image grisée du bouton introuvable");
    }
  }
  
  /** Fonction d'affichage du bouton. Appelée manuellement à chaque frame */
  public void display()
  {
    if(img[state] != null)
      image(img[state], position.x, position.y);
  }
  
  /**
  * Par mesure de sécurité, utilisez directement les constantes lors de l'appel de cette fonction
  */
  public void setState(int s)
  {
    if(s > -1 && s < NB_STATES)
      state = s;
    else
     println("Erreur : état incorrect."); 
  }
  
}
