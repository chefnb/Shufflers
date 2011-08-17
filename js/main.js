var p; // the processing instance
var obstaclesAvoid=false;
var ownSpeciesAvoid=false;

//  Calls to Processing


function Toggle1(){  // obstacle avoidance

 if (!p)  p = Processing.getInstanceById('pde');  

 if (!obstaclesAvoid) {
  
   obstaclesAvoid=true;
     $("#monitor_light1").css('background-color', 'red');
     p.toggleObstaclesAvoid("on");
   
   } else {

    obstaclesAvoid=false;
    $("#monitor_light1").css('background-color', 'transparent');
     p.toggleObstaclesAvoid("off");
   
 

   }

}


function Toggle2(){  // obstacle avoidance

 if (!p)  p = Processing.getInstanceById('pde');  

 if (!ownSpeciesAvoid) {
  
   ownSpeciesAvoid=true;
     $("#monitor_light2").css('background-color', 'red');
     p.toggleOwnSpeciesAvoid("on");
   
   } else {

    ownSpeciesAvoid=false;
    $("#monitor_light2").css('background-color', 'transparent');
     p.toggleOwnSpeciesAvoid("off");
   
 

   }

}

function setRate(rate){  // obstacle avoidance

 if (!p)  p = Processing.getInstanceById('pde');  
 p.setRate(rate);
   
}



//--------------------------------


$(document).ready(function(){         // GUI setup


 $( "#toggle1" ).button({
            icons: { primary: "ui-icon-power"  },
            text: false,
            width: 30
          
        });


 $( "#toggle2" ).button({
            icons: { primary: "ui-icon-power"  },
            text: false,
            width: 30
          
        });
                 
        

  $("#rate").slider({ step:0.01, min: 0,max: 1, value: 0.5 });
  $( "#rate" ).bind( "slidechange", function(event, ui) {
	  setRate($('#rate').slider("value"));
  });    


 $("#loading").hide();
 $("#curtain").fadeIn(2000);

	
});
