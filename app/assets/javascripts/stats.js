// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function (){
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();

  $("#stat_position_id").change(function() {
    console.log("Here we go agin!");
    if ($(this).val() == "2001") {
      $("#pitcher").show();
      $("#catcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2003") {
      $("#catcher").show();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2029") {
      $("#goalkeeper").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2031") {
      $("#midfielder").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2012") {
      $("#point-guard").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2015") {
      $("#power-forward").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2017") {
      $("#runner").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2019") {
      $("#quarterback").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    }
    else if ($(this).val() == "2022") {
      $("#tight-end").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#sprinter").hide();
      $("#quarterback").hide();
    }
    else if ($(this).val() == "2033") {
      $("#sprinter").show();
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
    }
    else{
      $("#catcher").hide();
      $("#pitcher").hide();
      $("#goalkeeper").hide();
      $("#midfielder").hide();
      $("#point-guard").hide();
      $("#power-forward").hide();
      $("#runner").hide();
      $("#quarterback").hide();
      $("#tight-end").hide();
      $("#sprinter").hide();
    } 
  });
});
