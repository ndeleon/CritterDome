class Smelly extends Critter {
  void smelly(){
    int pct;
  }
  void eat(){
    int pct = 40;
    calculateChances(pct);
    if (check == 1){
      addHealth(6);
    } else {
      subHealth(10);
    }
    
  }
  void snooze(){
    int pct = 80;
    calculateChances(pct);
    if (check == 1){
      addHealth(2);
    } else {
      subHealth(1);
    }
  }
  void dance(){
    if (age > 15 && health != 100){
      health++;
    }
  }
  void passDay(){
    setAge();
    setLuck();
    eat();
    snooze();
    dance();
  }
}
