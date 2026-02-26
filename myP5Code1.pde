setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX3nbjayB3ltM5Sq5GEHIwA-ql3hedYsmGAQ&s");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Which planet do you want to go to?   [Press f for Geonosis, c for Christophsis, s for Savareen, t for Tatooine, a for akiva, and r for rodia]"

 ;

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



