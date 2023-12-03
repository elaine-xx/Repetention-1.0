import g4p_controls.*;

PImage rightArrow, leftArrow, checkmark, xMark;
int imageSize = 50;
int textHeight = 100;

float daySizeX, daySizeY;
float paddingX = 50;
float paddingY = 100;
int calDownShift = 80; //This pushes all of the calendar to be underneath the weekends/days texts

int days = 7;
//int weeks = 6;
int month = 1;
int year = 2025;           //For max efficiency, you can see up to 3 years in the future.
int startingYear = year;
int yearAmt = 10;           //This is why you can see three years into the future! Change if you want
int dayBeingShown = 1;

boolean DrawDayScreen = false;
boolean DrawOnce = true;

String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int[] monthLengths = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
String[] daysOfWeek = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};

int selectedDay; //two vars to help with gui functionality
int currentMonth;


color circleCol = color(150);
int circleSize = 50;

Day[][][] Days;

void setup() {
  size(1000, 600);
  createGUI();
  Days = new Day[yearAmt][12][31]; //Day class[years][months][days]
  setupCalendar();
}


void draw() {
  background(204);
  if (DrawDayScreen == false) {
    drawCalendar();
  } else if (DrawDayScreen == true) {
    //month, day
    drawDayScreen(month, dayBeingShown);
  }
}
