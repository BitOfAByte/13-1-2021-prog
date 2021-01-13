Room[] house = new Room[6];


void setup() {
  size(800, 800);
  background(205);
  house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("duck", false, 210, 300);
  house[2] = new Room("iksa", false, 320, 300);
  house[3] = new Room("adad", false, 100, 410);
  house[4] = new Room("dddd", false, 210, 410);
  house[5] = new Room("sfsdf", false, 320, 410);
}

void draw() {

  // husk at draw looper - så hvergang den looper så opretter du nye objekter! det gør den 60 gange i sekundet!!


  for (int i = 0; i < house.length; i++) {
    // tegn taget
    house[i].drawRoof();
    // tegn rum
    house[i].drawRoom();
  }
}

void mouseClicked() {
  println("(" + mouseX + "," + mouseY + ")");

  // lav baggrund
  background(205);

  // lav tekstbox
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  
  // du manglede lige denne for - løkke!! og rette alle house[0] til house[i]
  for (int i = 0; i < house.length; i++) {
    // find ud af om vi tænder eller slukker lyset
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}
