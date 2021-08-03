PFont panamera_bold;
PFont panamera_reg;
PFont panamera_light;

String message = "TICKER";
String message1 = "JUST IN: FAST FOOD WORKERS VOTE ON NATIONAL STRIKE First Wave of Movement Unleashed on Drive Thrus -- Will this trigger robots? -- Still eating @ McDonald\'s?";
String message2 = "JUST IN: FAST FOOD WORKERS VOTE ON NATIONAL STRIKE First Wave of Movement Unleashed on Drive-Thrus -- Will this trigger robots? -- Can you still eat at McDonald\'s?";
String message3 = "HAPPENING NOW: BILLIONAIRE ELIMINATES PRISONS WHILE ERADICATING HOMELESSNESS Capitalism finally delivers humanity -- \"It isn\'t charity, it\'s change\" -- * Restorative Entrepreneurship loading * ";
;

color white = #192018;
color steel = #7f8f9f;
color black = #f1f1f9;

int font_size = 600;

void setup() {
  size(1280, 720);
  noStroke();
  String font_bold = "Panamera-Bold.otf";
  String font_reg = "Panamera-Regular.otf";
  String font_light = "Panamera-Light.otf";
  panamera_bold = createFont(font_bold, font_size);
  panamera_reg = createFont(font_reg, font_size);
  panamera_light = createFont(font_light, font_size);
}
void draw () {

  background(black);
  fill(white);


  int location = int(map(mouseX, 0, width, 0, message.length()));
  char c = message.charAt(location);
  float wave = tan(radians(frameCount));

  textFont(panamera_bold);
  textAlign(CENTER, CENTER);
  textSize(font_size);

  /* main text */
  pushMatrix();
  textSize(font_size / 2);
  translate(width / 2, height / 2 - 28);
  text(message, 0, 0);
  popMatrix();

  /* ticker text 1 copy */
  pushMatrix();
  textFont(panamera_reg);
  textSize(font_size / 12);
  textAlign(LEFT, TOP);
  text(message2, 32 + width - frameCount * 1.25, 60);
  popMatrix();

  /* ticker text 1 */
  pushMatrix();
  textFont(panamera_reg);
  textSize(font_size / 24);
  textAlign(LEFT, TOP);
  text(message2, 0 + -width + frameCount * 1.25, 32);
  popMatrix();

  /* ticker text 2 */
  pushMatrix();
  textFont(panamera_reg);
  textSize(font_size / 12);
  textAlign(LEFT, TOP);
  text(message3, 0 + -width + frameCount * 1.25, height - 116);
  popMatrix();

  /* ticker text 2 copy */
  pushMatrix();
  textFont(panamera_reg);
  textSize(font_size / 24);
  textAlign(LEFT, TOP);
  text(message3, 32 + width - frameCount * 1.25, height - 64);
  popMatrix();

  /* vertical bar */
  //pushMatrix();
  //noFill();
  //stroke(white);
  //strokeWeight(5);
  //rectMode(CENTER);
  ////rotate(radians(frameCount));
  //translate(width / 2, height / 2);
  //rect(0, 0, width, 0);
  //popMatrix();


  /* lower text */
  //pushMatrix();
  //translate(width / 2, height - 56);
  //textFont(panamera_reg);
  //textSize(font_size / 32);
  //textAlign(CENTER);
  //fill(white);
  //textLeading(font_size / 32);
  //text("News".toUpperCase(), 0, 0);
  //popMatrix();

  saveFrame("out/frame_####.jpg");
}
