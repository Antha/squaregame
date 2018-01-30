
    var numberWheel = 0;
    var numberMinWheel = -1;
    var curentScore = 0;
    var runWalkNumber;
	var runRotate;
    var statementBox;
	var rotation = 0;
	var beep,stopMusic,applaus,laugh,backsound;

    $(document).ready(function(){
        $("button[name=start]").click(function(){
			if($("input[name=player_name]").val() == '')
			{
				callMboxOk("Masukan Nama Anda Bos");
				return false;
			}
			start();
		});
        $("button.stop").click(function(){
            stop();
			$("button[name=start]").show();
        });
		$("input[name=player_pic]").bind("change",function(e){
			var file = $(this).val();
			if(e.target.files[0].size > 20000000){
				callMboxOk("Maaf Ukuran File Harus Kurang Dari 20 MB");
				return false;
			}
			var path = URL.createObjectURL(e.target.files[0]);
			$("img.player_pic").show();
			$("img.player_pic").attr("src",path);
		});
        componentInit();
    });

    function componentInit(){
        $(".mbox_ok").hide();
        $(".mbox_yno").hide();
		$("button.stop").prop('disabled',true);
		beep = new Audio('../source/beep-02.wav');
		stopMusic = new Audio('../source/cartoon011.wav');
		applaus = new Audio('../source/applause-5.mp3');
		laugh = new Audio('../source/laugh.wav');
		backsound = new Audio('../source/backsound~1.wav');
		backsound.addEventListener('ended', function() {
		    this.currentTime = 0;
		    this.play();
		}, false);
		backsound.play();
		$("img.player_pic").hide();
		animateBox();
		highestScore();
		setInterval(highestScore,5000);
    }

	function handleInput(textplay){
		if(textplay.length > 15){
			callMboxOk("Maaf, Tidak Boleh Dari 14 Huruf");
			$("input[name=player_name]").val("");
			return false;
		}
	}

	function animateBox(){
		$(".container-start").animate({marginLeft:"0px",opacity:"show"},1500);
		$(".container-wheel").animate({marginTop:"0px",opacity:"show"},1500);
		$("h3.title").animate({marginTop:"0px",opacity:"show"},1500);
		$(".container-score h4").fadeIn(3000);
	}

	function rotateWheel(){
		rotation = rotation + 5 ;
		$(".container-wheel .wheelX").css("transform","rotate("+rotation+"deg)");
	}

	function start(){
         thefuncY = "play()";
         statementBox = "Ayo Tap Pas Di Angka 1000. Semakin Mendekati Angka 1000 ngetapnya, skor semakin besar.";
         statementBox = statementBox + " Jika Melewati 1000, Angka Akan Menjadi Minus <br/> Siap, Klik Yes ?";
	     callMboxYno(statementBox,thefuncY);
		 $("html,body").animate({scrollTop:$(document).height()},500);
	}

    function play(){
		$(".container-wheel .maskot img").attr("src","../source/slow miku.gif");
		$("button.stop").prop('disabled',false);
        $(".mbox_yno").css("display","none");
        runWalkNumber = setInterval(walkNumber,1000);
		runRotate = setInterval(rotateWheel,1000);
		$("button[name=start]").hide();
    }

    function stop(){
		var imgSkor = "";
		stopMusic.play();
        unWalkNumber();
		if(curentScore == 1000){
			applaus.play();
			imgSkor = imgSkor + "<br/><img src='../source/happy.jpg' width='100'/>";
		}
		else {
			laugh.play();
			imgSkor = imgSkor + "<br/><img src='../source/Y0UJC.png' width='100'/>";
		}
		insertData();
		callMboxOk("Skor Kamu Adalah "+curentScore+imgSkor);
        revertValue();
		$("button.stop").prop('disabled',true);
		$(".container-wheel .maskot img").attr("src","../source/silent miku.JPG");
    }

    function revertValue(){
        numberWheel = 0;
        numberMinWheel = -1;
        curentScore = 0;
    }

    function unWalkNumber(){
        clearInterval(runWalkNumber);
		clearInterval(runRotate);
    }

    function stepSpeed(speed){
		clearInterval(runWalkNumber);
		clearInterval(runRotate);
        runWalkNumber = setInterval(walkNumber,speed);
		runRotate = setInterval(rotateWheel,speed);
    }

    function walkNumber(){
		if(numberWheel == 200){
			$(".container-wheel .wheel").css("background","yellow");
		}
		if(numberWheel == 300){
			$(".container-wheel .maskot img").attr("src","../source/speed-up.gif");
		}
		if(numberWheel == 400){
			$(".container-wheel .wheel").css("background","#00FF37");
		}
		if(numberWheel == 600){
			$(".container-wheel .wheel").css("background","#0043FF");
		}
		if(numberWheel == 800){
			$(".container-wheel .wheel").css("background","#FF310F");
		}
		if(numberWheel == 2){
			stepSpeed(100);
		}
		if(numberWheel == 8){
			stepSpeed(50);
		}
		if(numberWheel == 14){
			stepSpeed(10);
		}
        if(numberWheel > 1000)
        {
            numberMinWheel = numberMinWheel - 1;
            $(".container-wheel .wheel .number").html(numberMinWheel);
            curentScore = numberMinWheel;
            if(numberMinWheel < -10000)
            {
                stop();
            }
			beep.play();
        }
        else {
			beep.play();
            numberWheel = numberWheel + 1;
            $(".container-wheel .wheel .number").html(numberWheel);
            curentScore = numberWheel;
        }
    }

    function callMboxOk(statement)
    {
        $(".mbox_ok span").html(statement);
        $(".mbox_ok").css("display","block");
        $(".mbox_ok button").click(function(){
            $(".mbox_ok").css("display","none");
        })
    }

    function callMboxYno(statement,thefuncY)
    {
        $(".mbox_yno span").html(statement);
        $(".mbox_yno").css("display","block");
        $(".mbox_yno button#yes").attr('onclick',thefuncY);
		$(".mbox_yno button#no").click(function(){
			$(".mbox_yno").css("display","none");
		});
    }

	function insertData()
	{
		var pfile = $("input[name=player_pic]")[0].files[0];
		var name = $("input[name=player_name]").val();
		var score = curentScore;
		var formFile = new FormData();

		formFile.append("name",name);
		formFile.append("score",score);
		formFile.append("file",pfile);

		jQuery.ajax({
			type:"POST",
			url:"insert.php",
			dataType:"json",
			data:formFile,
			processData:false,
			contentType:false,
			cache:false,
			success:function(data){
				alert(data);
				clearconsole();
			}
		});
	}

	function clearconsole() {
       console.log(window.console);
       if(window.console || window.console.firebug) {
       console.clear();
      }
    }

	function highScore(){
		window.location.href = "hiscore.php";
	}

	function highestScore(){
		var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            $(".highest_score").html(this.responseText);
        };
        xmlhttp.open("GET", "highestScore.php");
        xmlhttp.send();
    }
