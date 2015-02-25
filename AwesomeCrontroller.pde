Critter[] pop = new Critter[15];
Enviroment env = new Enviroment();
 
void setup(){
  pop[0] = new Smelly();
  pop[1] = new Smelly();
  pop[2] = new Smelly();
  pop[3] = new Smelly();
  pop[4] = new Smelly();
  pop[5] = new Ugly();
  pop[6] = new Ugly();
  pop[7] = new Ugly();
  pop[8] = new Ugly();
  pop[9] = new Ugly();
  pop[10] = new Awkward();
  pop[11] = new Awkward();
  pop[12] = new Awkward();
  pop[13] = new Awkward();
  pop[14] = new Awkward();  
  env.runSimulation();
}

void draw(){
}

class Enviroment {
  int day = 0;
  
  void finalStatus(){
    println("[---------------- Final Results: ----------------]");
    for(int i = 0; i < 15; i++){
      println("The age of " + pop[i] + " is " + pop[i].getAge() + " and the health of " + pop[i] + " is " + pop[i].getHealth() + " while the luck of " + pop[i] + " is " + pop[i].getLuck());
      //delete |" );// "| here -------^ after program is working
    }
  }
  
  void runSimulation(){
    println("Running...");
    for (int i = 0; i < 30; i++){
      day++;
      println("[-------------------- Day " + day + " --------------------]");
      printStatus(); 
    }
    finalStatus();
  }
  
  void printStatus(){
    for(int i = 0; i < 15; i++){
      pop[i].passDay();
      println("The age of " + pop[i] + " is " + pop[i].getAge() + " and the health of " + pop[i] + " is " + pop[i].getHealth() + " while the luck of " + pop[i] + " is " + pop[i].getLuck());
      //delete |" );// "| here -------^ after program is working
    }
  }
  
  
}
