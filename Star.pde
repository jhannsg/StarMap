class Star
{
  float hab;
  String name;
  float distance;
  float xg;
  float yg;
  float zg;
  float AbsMag;
  
  Star(float hab, String name, float distance, float xg, float yg, float zg, float AbsMag)
  {
      this.hab = hab;
      this.name = name;
      this.distance = distance;
      this.xg = xg;
      this.yg = yg;
      this.zg = zg;
      this.AbsMag = AbsMag;
  }
  
  String toString()
  {
    return hab + "\t" + name + "\t" + distance + "\t" + xg 
    + "\t" + yg + "\t" + zg + "\t" + AbsMag;
  }
  
}