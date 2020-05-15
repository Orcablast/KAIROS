<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <script src="/src/js/jquery-3.3.1.js"></script>
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssreset/reset-min.css">
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <style>
    /* #playlist {
      list-style: none;
    }
    #playlist li {
      list-style: none;
    }
    #playlist li a {
      color: black;
      text-decoration: none;
    }

    #playlist .current-song a {
      color: blue;
    } */
    .gradient {
    border: 1px solid black;
 
    -webkit-box-shadow: inset 0 1px 0px rgba(255,255,255,.2);
    -moz-box-shadow: inset 0 1px 0px rgba(255,255,255,.2);
    box-shadow: inset 0 1px 0px rgba(255,255,255,.2);
    background: #494949; /* Old browsers */
background: -webkit-linear-gradient(top, #494949 0%, #434242 31%, #393838 55%, #242323 83%, #1b1a1a 100%, #161515 100%, #0b0b0b 100%);
 
    background: -moz-linear-gradient(top, #494949 0%, #434242 31%, #393838 55%, #242323 83%, #1b1a1a 100%, #161515 100%, #0b0b0b 100%);
    background: -o-linear-gradient(top, #494949 0%, #434242 31%, #393838 55%, #242323 83%, #1b1a1a 100%, #161515 100%, #0b0b0b 100%);
    background: -ms-linear-gradient(top, #494949 0%, #434242 31%, #393838 55%, #242323 83%, #1b1a1a 100%, #161515 100%, #0b0b0b 100%);
    background: linear-gradient(top, #494949 0%, #434242 31%, #393838 55%, #242323 83%, #1b1a1a 100%, #161515 100%, #0b0b0b 100%); /* W3C */
-image  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#494949', endColorstr='#0b0b0b',GradientType=0 ); /* IE6-9 */
}
 
.container {
    -webkit-transition: all .7s ease;
    -moz-transition: all .7s ease;
    -o-transition: all .7s ease;
    -ms-transition: all .7s ease;
    transition: all .7s ease;
    position: absolute;
    width: 427px;
    height: 70px;
 
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
 
    -webkit-box-shadow: 0px 0px 13px rgba(0,0,0,.3),inset 0 1px 0px rgba(255,255,255,.2);
    -moz-box-shadow: 0px 0px 13px rgba(0,0,0,.3),inset 0 1px 0px rgba(255,255,255,.2);
    box-shadow: 0px 0px 13px rgba(0,0,0,.3),inset 0 1px 0px rgba(255,255,255,.2);
    top: 50%;
    left: 50%;
    margin: -214px 0px 0px -214px;
    padding: 10px;
 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box;
}
 
 
.containerLarge {
    height: 427px;
}
 
.cover {
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    width: 398px;
    height: 10px;
    border: 2px solid black;
 
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
 
    -webkit-box-shadow: inset 0px 5px 5px rgba(0,0,0,1);
    -moz-box-shadow: inset 0px 5px 5px rgba(0,0,0,1);
    box-shadow: inset 0px 5px 5px rgba(0,0,0,1);
}
 
.coverLarge {
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    height: 398px;
 
    -webkit-transition: opacity .7s ease;
    -moz-transition: opacity .7s ease;
    -o-transition: opacity .7s ease;
    -ms-transition: opacity .7s ease;
    transition: opacity .7s ease;
 
    -webkit-transition-delay: .5s;
    -moz-transition-delay: .5s;
    -o-transition-delay: .5s;
    -ms-transition-delay: .5s;
    transition-delay: .5s;
}

  </style>
  <body>
    <!-- <audio controls="controls">
      <source src="/src/song/bensound-summer.mp3" type="audio/ogg" />
      <source src="/src/song/bensound-summer.mp3" type="audio/mpeg" />
      Your browser does not support the audio element.
    </audio> -->
    <h1>HTML 5 Audio Player</h1>
 
    <div class="container gradient">
         
        <img class="cover" src="images/cover.jpg" alt="">
 
        <div class="player gradient">
 
            <a class="button gradient" id="play" href="" title=""></a>
            <a class="button gradient" id="mute" href="" title=""></a>
         
                <input type="range" id="seek" value="0" max=""/>
     
            <a class="button gradient" id="close" href="" title=""></a>
             
        </div><!-- / player -->
         
    </div><!-- / Container-->


    <nav class="navbar navbar-light bg-light">

      <audio src="" controls id="audioPlayer"></audio>
      <ul id="playlist">
        <li class="current-song">
          <a href="/src/song/bensound-summer.mp3">Song number 1</a>
        </li>
        <li><a href="/src/song/bensound-summer.mp3">Song number 2</a></li>
        <li><a href="/src/song/bensound-summer.mp3">Song number 3</a></li>
      </ul>



    </nav>

  </body>

  <script>
    // $(function () {
    //   $("#audioPlayer").eq(0).attr("src",$("#playlist li a").eq(0).attr("href"))
    //   $("#audioPlayer").eq(0).play();
    //   $("#playlist li a").click(function (e) {
    //     e.preventDefault();
    //     $("#audioPlayer").eq(0).attr("src",$(this).attr("href"));
    //     $("#audioPlayer").eq(0).play();
    //     $("#playlist li").removeClass("current-song");
    //     currentSong = $(this).parent().index();
    //     $(this).parent().addClass("current-song");
    //   });
    //   $("#audioPlayer").eq(0).addEventListener("ended", function () {
    //     currentSong++;
    //     if (currentSong == $("#playlist li a").length) {
    //       currentsong = 0;
    //       $("#playlist li").removeClass("current-song");
    //       $("#playlist li:eq(" + currentSong + ")").addClass("current-song");
    //       $("#audioPlayer").eq(0).attr("src",$("#playlist li a").eq(currentSong).attr("href"));
    //       $("#audioPlayer").eq(0).play();
    //     }
    //   });
    // });
    audioPlayer();
    function audioPlayer(){
        var currentSong = 0;
        $("#audioPlayer")[0].src = $("#playlist li a")[0];
        $("#audioPlayer")[0].play();
        $("#playlist li a").click(function(e){
            e.preventDefault();
            $("#audioPlayer")[0].src = this;
            $("#audioPlayer")[0].play();
            $("#playlist li").removeClass("current-song");
            currentSong = $(this).parent().index();
            $(this).parent().addClass("current-song");
        });
        $("#audioPlayer")[0].addEventListener("ended",function(){
            currentSong++;
            if(currentSong == $("#playlist li a").length)
            currentSong = 0;
            $("#playlist li").removeClass("current-song");
            $("#playlist li:eq("+currentSong+")").addClass("current-song");
            $("#audioPlayer")[0].src = $("#playlist li a")[currentSong].href;
            $("#audioPlayer")[0].play();
        });
    }
  </script>
</html>
