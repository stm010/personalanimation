int //personX, personY,
  donutX, donutY, donutVX, donutVY,
  pizzaX, pizzaY, pizzaVX, pizzaVY,
  pancakeX, pancakeY, pancakeVX, pancakeVY,
  appleX, appleY, appleVX, appleVY,
  counter,
  w1, w2, w3, w4;

PImage img1, img2;

void setup () {
  size (800, 600, P2D);

  img1 = loadImage ("smile.png");
  img2 = loadImage ("closedsmile.png");

  counter = 0;

  donutX=0;
  donutY=0;
  donutVX=-3;
  donutVY=-5;

  pizzaX=0;
  pizzaY=0;
  pizzaVX=5;
  pizzaVY=-3;

  pancakeX=0;
  pancakeY=300;
  pancakeVX=3;
  pancakeVY=-5;

  appleX=0;
  appleY=300;
  appleVX=5;
  appleVY=5;

  w1=25;
  w2=20;
  w3=15;
  w4=10;
}

void draw () {
  background (255);

  strokeWeight (5);
  rect (370, 80, 270, 90, 10);
  textSize (30);
  textAlign (CENTER, CENTER);
  fill (0);
  text ("yum", 500, 120);

  fill (255);

  ellipse (600, 200, w1, w1);
  w1=w1+1;
  if (w1>25) {
    w1=0;
  }
  ellipse (570, 230, w2, w2);
  w2=w2+1;
  if (w2>20) {
    w2=0;
  }
  ellipse (550, 260, w3, w3);
  w3=w3+1;
  if (w3>15) {
    w3=0;
  }
  ellipse (530, 290, w4, w4);
  w4=w4+1;
  if (w4>10) {
    w4=0;
  }

  fill (255); //start face
  stroke (0);
  strokeWeight (5);
  //ellipse (400, 300, 20, 20);
  rect (325,335,150,140,200);
  ellipse (400, 300, 200, 200); //head



  counter = counter +1; //blinking mouth
  if (counter<50) {
    image (img1, 360, 310, width/10, height/10);
  }
  if (counter >50) {
    image (img2, 360, 310, width/10, height/10);
  }
  if (counter == 100) {
    counter =0;
  }

  fill (0);
  ellipse (360, 280, 20, 20);
  ellipse (440, 280, 20, 20); //endface

  strokeWeight (1);

  donut (donutX, donutY);
  donutX = donutX + donutVX;
  donutY=donutY+donutVY;
  if (donutX>530) {
    donutVX = -5;
  }
  if (donutX <-300) {
    donutVX=5;
  }
  if (donutY>140) {
    donutVY=-5;
  }
  if (donutY<-450) {
    donutVY=5;
  }

  pancake (pancakeX, pancakeY);
  pancakeX=pancakeX+pancakeVX;
  pancakeY=pancakeY+pancakeVY;
  if (pancakeX>600) {
    pancakeVX=-5;
  }
  if (pancakeX<-200) {
    pancakeVX=5;
  }
  if (pancakeY>430) {
    pancakeVY=-5;
  }
  if (pancakeY<-200) {
    pancakeVY=5;
  }

  pizza (pizzaX, pizzaY);
  pizzaX=pizzaX+pizzaVX;
  pizzaY=pizzaY+pizzaVY;
  if (pizzaX>250) {
    pizzaVX=-5;
  }
  if (pizzaX<-550) {
    pizzaVX=5;
  }
  if (pizzaY>120) {
    pizzaVY=-5;
  }
  if (pizzaY<-450) {
    pizzaVY=5;
  }

  apple (appleX, appleY);
  appleX=appleX+appleVX;
  appleY=appleY+appleVY;
  if (appleX>250) {
    appleVX=-4;
  }
  if (appleX<-550) {
    appleVX=3;
  }
  if (appleY>500) {
    appleVY=-3;
  }
  if (appleY<-100) {
    appleVY=4;
  }
}

//person
//void person (int x, int y) {
// translate (x, y); // IMPORTANT FOR ANIMATION
//fill (255);
// stroke (0);
// ellipse (400, 300, 20, 20);
// ellipse (400, 300, 200, 200); //head
//
//image (img,360,310,width/10,height/10);
// fill (255, 100, 100);
// ellipse (400, 320, 130, 100); //mouth
// stroke (255);
//fill (255);
// rect (320, 250, 160, 70); //overlay mouth
// stroke (0);
// line (335, 320, 465, 320);
// fill (0);
// ellipse (360, 280, 20, 20);
// ellipse (440, 280, 20, 20);
//}

//donut bagel thing
void donut (int x, int y) {
  pushMatrix () ;
  translate (x, y);
  fill (148, 91, 43);
  ellipse (300, 460, 70, 50); //donut
  fill (0);
  ellipse (300, 456, 70, 40); //frosting
  fill (255);
  //sprinkles
  ellipse (300, 457, 20, 8);
  fill (250, 34, 51);
  ellipse (275, 453, 5, 5);
  fill (250, 63, 34);
  ellipse (280, 460, 5, 5);
  fill (34, 250, 152);
  ellipse (290, 470, 5, 5);
  fill (189, 34, 250);
  ellipse (300, 467, 5, 5);
  fill (252, 184, 8);
  ellipse (312, 470, 5, 5);
  fill (250, 34, 150);
  ellipse (315, 462, 5, 5);
  fill (34, 117, 250);
  ellipse (321, 450, 4, 4);
  fill (189, 250, 34);
  ellipse (304, 443, 4, 4);
  fill (34, 204, 250);
  ellipse (290, 447, 5, 5);
  popMatrix ();
}

//pizza
void pizza (int x, int y) {
  pushMatrix ();
  translate (x, y);
  fill (247, 235, 60);
  triangle (520, 400, 555, 500, 590, 400);
  line (523, 410, 586, 410);
  fill (247, 95, 60);
  ellipse (540, 425, 10, 10);
  ellipse (563, 423, 11, 11);
  ellipse (556, 439, 12, 12);
  ellipse (553, 460, 7, 7);
  popMatrix() ;
}

//pancakes
void pancake (int x, int y) {
  pushMatrix ();
  translate (x, y);
  fill (248, 209, 154);
  stroke (208, 153, 81);
  ellipse (200, 219, 50, 30);
  ellipse (200, 212, 50, 30);
  ellipse (200, 205, 50, 30);
  ellipse (200, 198, 50, 30);
  fill (248, 230, 154); //butter
  stroke (248, 230, 154);
  ellipse (200, 198, 30, 10);
  fill (255, 0, 0); //fruit
  ellipse (200, 195, 8, 10);
  popMatrix () ;
}

//apple
void apple (int x, int y) {
  pushMatrix () ;
  translate (x, y);
  stroke (0);
  fill (153, 110, 75); //stem
  rect (537, 94, 5, 10);
  fill (150, 206, 109); //leaf
  triangle (542, 95, 550, 95, 542, 110);
  fill (223, 79, 57); //apple
  ellipse (540, 117, 35, 32);
  fill (255);
  ellipse (548, 112, 5, 8);
  popMatrix () ;
}

//imported images
//blinking shapes
//bouncing
//moving complex shapes
//expanding circle
//text
//rect with rounded corners
