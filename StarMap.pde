//Paul Petrisor
//C15735611

void setup()
{
  size(800, 800);
  loadTable();
  printStars();
  
  celWidth = (width -100) / (float)colCount;
  celHeight = (height -100)/  (float)rowCount;
 
}

ArrayList<Star> stars = new ArrayList<Star>();//i did 

void loadTable()
{
  Table t = loadTable("HabHYG15ly.csv", "header");
  stars.clear();
  for (int row = 0; row < t.getRowCount(); row ++)
   {
     Star s = new Star(t.getFloat(row, 2),
                       t.getString(row, 3),
                       t.getFloat(row, 12),
                       t.getFloat(row, 13),
                       t.getFloat(row, 14),
                       t.getFloat(row, 15),
                       t.getFloat(row, 16)
                       );
     stars.add(s);
    
   }
}

void printStars()
{
  for(int i = 0; i < stars.size(); i++)
  {
    Star s = stars.get(i);
    println(s);
  }
}


int rowCount = 10;
int colCount = 10;

float celWidth;
float celHeight;
boolean [][] board = new boolean[rowCount][colCount];

void draw()
{
  background(0);
  
  //draw the grid
  for(int i = 0; i <= rowCount ; i++)
  {
    for(int j = 0; j <= colCount ; j++)
    {
      stroke(255, 0, 255);
       line(50, j* celHeight +50, width-50, celHeight * j + 50 );
       line(j* celWidth +50, 50, celWidth * j + 50 , height - 50 );
    }
  }
  
  
 
}