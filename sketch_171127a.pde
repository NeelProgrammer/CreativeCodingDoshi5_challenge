int x = 100;
int y = 100;
int x1 = 700;
int y1 = 100;
int x2 = 400;
int y2 = 400;
PImage myimgsp;
PImage myimgsp2;
int sp1 = 30;
int sp2 = -30;
boolean hitwall = false;
boolean started = false;
boolean lvl = false;
float S = 0.025;
float sb = 20;

void setup()
{
  myimgsp2 = loadImage("CAR2.png");
  myimgsp = loadImage("CAR.png");
  imageMode(CENTER);
  size(800, 800);
}
void draw()
{

  background(0);
  fill(100,135,180);
  ellipse(mouseX, mouseY, sb, sb);
  image(myimgsp2, x1, y1, 100, 100);
  image(myimgsp, x, y, 100, 100);
  if( started == true)
  {
    sb = sb + S;
  }
  if(sb > 60)
  {
    started = false;
  }
  if( dist(x,y,x1,y1)<(100))
  {
    textSize(215);
    text("Suicide", 000,400);
    x1 = 1000;
    x = 1000;
  }
  if(lvl == false)
  {
  if (dist(mouseX, mouseY, x, y)<((sb*1/2)+50))
  {
    textSize(100);
    text("CARSIWNS", 100, 100);
  }
  if (dist(mouseX, mouseY, x1, y1)<((sb*1/2)+50))
  {
    textSize(100);
    text("CARWINS", 100, 100);
  }
  }
  if (mouseX> 800)
  {
    hitwall = true;
    x2 = x2 -1;
    y2 = y2++;
  }
  if (mouseY> 800)
  {
    hitwall = true;
    y2 = y2-1;
    x2 = x2-1;
  }
  if (mouseX< 0)
  {
    hitwall = true;

    x2 = x2 +1;
    y2 = y2 -1 ;
  }
  if (mouseY< 0)
  {
    hitwall = true;

    y2 = y2 +1;
    x2 = x2-1;
  }
  if(millis()> 5000 && millis() < 50010)
  {
    lvl = true;
    fill(random(255),random(255),random(255));
    ellipse(mouseX, mouseY, sb,sb);
     if (dist(mouseX, mouseY, x, y)<((sb*1/2)+50))
  {
    textSize(100);
text("ball Wins", 100, 100);  }
  if (dist(mouseX, mouseY, x1, y1)<((sb*1/2)+50))
  {
    textSize(100);
text("ball Wins", 100, 100);  }
  }
}

void keyPressed()
{
  if (key == 'w')
  {
    started = true;
    y1 = y1 + sp1;
  }
  if (key == 's')
  {
    started = true;

    y1 = y1 - sp1;
  }
  if (key == 'a')
  {
    started = true;

    x1 = x1 + sp1;
  }
  if (key == 'd')
  {
    started = true;

    x1 = x1 - sp1;
  }
  if (key == 'g')
  {
    started = true;

    y = y + sp2;
  }
  if (key == 't')
  {
    started = true;

    y = y - sp2;
  }
  if (key == 'h')
  {
    started = true;

    x = x + sp2;
  }
  if (key == 'f')
  {
    started = true;

    x = x - sp2;
  }
} 