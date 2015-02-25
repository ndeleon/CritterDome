class Ugly extends Critter {
  void ugly(){
    int pct;
  }
  void eat(){
    int pct = 70;
    calculateChances(pct);
    if (check == 1){
      addHealth(4);
    } else {
      subHealth(15);
    }
    
  }
  void snooze(){
    int pct = 50;
    calculateChances(pct);
    if (check == 1){
      addHealth(9);
    } else {
      subHealth(2);
    }
  }
  void passDay(){
    setAge();
    setLuck();
    eat();
    snooze();
  }
}
