Room[] house = new Room[6];


void setup() {
  size(800, 800);
  background(205);
  house[0] = new Room("Room", false, 100, 300);
}

void draw() {
  // tegn taget

  house[0].drawRoof();
  // tegn rum

  house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("duck", false, 210, 300);
  house[2] = new Room("iksa", false, 320, 300);
  house[3] = new Room("adad", false, 100, 410);
  house[4] = new Room("dddd", false, 210, 410);
  house[5] = new Room("sfsdf", false, 320, 410);

  for (int i = 0; i < house.length; i++) {
    house[i].drawRoom();
  }
}

void mouseClicked() {
  println("(" + mouseX + "," + mouseY + ")");
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  if (house[0].isRoomClicked(mouseX, mouseY))
    if (house[0].light) {
      house[0].setLight(false);
      text("Turning off the light in "+house[0].getRoomName(), 100, 700);
    } else {
      house[0].setLight(true);
      text("Turning on the light in "+house[0].getRoomName(), 100, 700);
    }
}
