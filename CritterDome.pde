abstract class Critter extends Enviroment {
  int age = 0;
  int health = 10;
  int luck = int(random(2, 10));
  int check;
  
  void passDay(){
  }
  
  int getAge(){
    return age;
  }
  
  int setAge(){
    age++;
    return age;
  } 
  
  int getHealth(){
    return health;
  }
  
  int addHealth(int amount){
    if (health >= 100){
      health = 100;
    } else if (health < 100){
      health = health + amount;
    }
    return health;
  }
  
  int subHealth(int amount){
    if (health <= 0){
      health = 1;
    } else if (health > 0){
      health = health - amount;
    }
    return health;
  }
  
  int getLuck(){
    return luck;
  }
  
  int setLuck(){
    luck = int(random(1, 10));
    return luck;
  }  
  boolean calculateChances(int pct){
    int chance = pct * luck;
    if (chance <= 225){
      check = 0;
      return false;
    }
    check = 1;
    return true;
  }
  
}
