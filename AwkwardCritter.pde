class Awkward extends Critter {
  void awkward(){
    int pct;
  }
  
  void eat(){
    int pct = 85;
    calculateChances(pct);
    if (check == 1){
      addHealth(2);
    } else {
      subHealth(20);
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
  void yodel(){
    if (health >= 80 && luck > 7){
      addHealth(3);
    } else if (health >= 80 && luck <= 7){
      addHealth(2);
    }
  }
  void meditate(){
    int pct = 50;
    calculateChances(pct);
    if (check == 1){
      addHealth(2);
    } else {
      subHealth(7);
    }
  }
  
  void passDay(){
    setAge();
    setLuck();
    eat();
    snooze();
    yodel();
    meditate();
  }
}
