Board board = new Board();
TileBag bag_1 = new TileBag();
Player player_1 = new Player("Player 1");
Player player_2 = new Player("Player 2");

void setup() {
  size(560, 640);
  frameRate(30);
}

void draw() {
  background(64,64,128);
  board.update();
}


class Board {
  private int tileSize = 36;
  public Tile[][] structure = new Tile[15][15];
  
  Board() {
    for(int i=0; i<15; i++) {
      for(int j=0; j<15; j++){
        structure[i][j] = new Tile('M',0);
      }
    }
  }
  
  void update() {
    PFont font_tile;
    PFont font_player;
    font_tile = createFont("Courier", 24);
    textFont(font_tile);
    textAlign(CENTER,CENTER);
   
    for(int i=0; i<15; i++) {
      for(int j=0; j<15; j++) {
         fill(255,255,195);
         rect(10+i*tileSize, 10+j*tileSize, tileSize, tileSize, 4);
         fill(0);
         text(structure[i][j].symbol,10+i*tileSize+tileSize*0.5, 10+j*tileSize+tileSize*0.5); 
      } 
    }
    
    font_player = createFont("Courier", 18);
    textFont(font_player);
    textAlign(LEFT,CENTER);
    fill(0);
    text(player_1.name+": "+player_1.score+" points", 10, 580);
    text(player_2.name+": "+player_2.score+" points", 10, 610);
  }
}

class Tile {
  public char symbol;
  public int value;
  
  public Tile(char s, int v) {
     symbol = s;
     value = v;
  }
}

class TileBag { 
  public ArrayList<Tile> digitBag;
  public ArrayList<Tile> operationBag;
  public ArrayList<Tile> comparisonBag;
  
  private boolean created = false;
  
  public TileBag() {
    if(!created){
      created = !created;
      
    } 
    else {
    
    };
  }  
  
  public void drawDigit(){
    
  }
  
  public void drawOperation(){
    
  }
}

class Hand {
  public Tile[] digits = new Tile[6];
  public Tile[] operations = new Tile[3];
  
  public Hand(){
    for(int i=0; i<6; i++) {
      // draw 6 tiles from digits 
    }
    for(int i=0; i<3; i++) {
      // draw 3 tiles from operations
    }
  }
}

class Player { 
  public Hand hand;
  public int score;
  public String name;
  
  public Player(String n) {
    name = n;
    score = 0;
  }
}


