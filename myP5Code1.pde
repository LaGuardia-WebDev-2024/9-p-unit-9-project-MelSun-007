setup = function() {
    size(800, 500);
};

//Background Images
var caveSceneImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX3nbjayB3ltM5Sq5GEHIwA-ql3hedYsmGAQ&s");

var Geonosis = loadImage("https://lumiere-a.akamaihd.net/v1/images/geonosis-history-3-retina_32c43377.jpeg?region=0%2C0%2C1200%2C512");

var Savareen = loadImage("https://britishfilmdesigners.com/wp-content/uploads/2025/01/THE-MAIN-STRUCTURE-FOR-SAVAREEN-BY-JOHN-WILSON-1024x535.png");

var Tatooine = loadImage("https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/05/tatooine-star-wars-Cropped.jpg?w=1200&h=628&fit=crop");

var Christophsis = loadImage("https://static.wikia.nocookie.net/starwars/images/f/f5/Christophsis_landscape.png/revision/latest?cb=20120929022612")



//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Which planet do you want to go to? \n [Press f for Geonosis, c for Christophsis, s for Savareen, t for Tatooine, a for akiva, and r for rodia]"

 ;

draw = function(){
   
   drawScene();


   if(keyPressed){
     
     if(key == 'f'){
       sceneImage = Geonosis;   
       sceneText = "You found them!";
     } 
     if(key == 's'){
      sceneImage = Savareen;
      sceneText = "No Jedi here [Press z to restart] ";
     }
   if(key == 'z'){
      sceneImage = caveSceneImage;
      sceneText = "Which planet do you want to go to?   [Press f for Geonosis, c for Christophsis, s for Savareen, t for Tatooine, a for akiva, and r for rodia]";
   

   }

   if(key == 't'){
      sceneImage = Tatooine;
        sceneText = "No Jedi here [Press z to restart] " } 

         if(key == 'c'){
      sceneImage = Christophsis;
        sceneText = "No Jedi here [Press z to restart] " } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 800, 500);
    
    fill(0,0,0);
    rect(0, 430, 800, 200);
      
    fill(255,255,255);
    textSize(18);
   
    text(sceneText, 10, 455);
};



