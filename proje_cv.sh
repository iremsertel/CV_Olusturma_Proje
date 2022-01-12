#!/bin/sh

 BLM=$(zenity --entry \
	--title="BOLUM" \
	--width=500 \
	--text="Bolumunuzu giriniz:" \
	--entry-text "")
 
 ROW=$(zenity --forms \
        --title="BİLGİ EKLE" \
	--text="Bilgilerinizi giriniz" \
	--separator=";" \
	--add-entry="Adiniz" \
	--add-entry="Soyadiniz" \
	--add-entry="Yasadiginiz yer" \
	--add-entry="Mail" \
	--add-entry="Gİthub link" \
	--add-entry="Linkedin link" \
	--add-entry="CV icin mor mu mavi mi ?" \
	--add-entry="Fotograf link" \
	--add-entry="Telefon")
	
 ILG=$(zenity --forms \
        --title="İlgi Alanlarınız" \
	--text="Lütfen araya boşluk yerine '-' koyarak giriniz" \
	--separator=";" \
	--add-entry="Birinci İlgi Alanınız" \
	--add-entry="İkinci İlgi Alanınız")
	
 dizi=($(echo $ILG | tr ";" "\n"))

 VALUE1=$(zenity --scale \
	--title="İlgi Alanı Değeri" \
 	--text="'${dizi[0]}' icin değer:" \
 	--value=100)
 	
  
 VALUE2=$(zenity --scale \
 	--title="İlgi Alanı Değeri" \
 	--text="'${dizi[1]}' icin değer:" \
 	--value=100)

 PRJ=$(zenity --entry \
	--title="Proje ve Deneyimleriniz" \
	--width=500 \
	--text="Yaziniz:" \
	--entry-text "")

 EGM=$(zenity --entry \
        --title="Egitim Bilgileriniz" \
        --width=500 \
        --text="Yaziniz:" \
        --entry-text "")


 arr=($(echo $ROW | tr ";" "\n"))
 
 
 if [ ${arr[6]} == "mor" ]
 then
 (
 echo '<!DOCTYPE html>
       <html lang="en">
       <head>
         <title>CV</title>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <style>
          * {
             box-sizing: border-box;
            }

          body {
             font-family: Arial, Helvetica, sans-serif;
             margin: 0;
               }    

         .header {
             padding: 40px;
             text-align: center;
             background: #cdb4e6;
             color: white;
                 }

        .header h1 {
             font-size: 40px;
                   }

        .row {  
             display: -ms-flexbox; /* IE10 */
             display: flex;
             -ms-flex-wrap: wrap; /* IE10 */
             flex-wrap: wrap;
             }

        .side {
             -ms-flex: 30%; /* IE10 */
             flex: 30%;
             background-color: #f1f1f1;
             padding: 20px;
              }

        .main {   
             -ms-flex: 70%; /* IE10 */
             flex: 70%;
             background-color: white;
             padding: 20px;
              }

       .fakeimg {
            /* background-color: #aaa; */
            width: 50%;
            padding: 20px;
                }

       .fakeimg2 {
            background-color: rgb(122, 107, 151);
            border-radius: 15px 50px;
            box-shadow: 10px 10px 5px #6a0d81;
            width: 50%;
            padding: 20px;
  
                }
                
        img {

            border-radius: 15px 50px;
            }

       .footer {
           padding: 10px;
           text-align: center;
           background: rgb(187, 176, 192);
               }

       @media screen and (max-width: 700px) {
          .row {   
             flex-direction: column;
               }
        }

    </style>
    </head>
    <body>

<div class="header">
  <h1 style="text-shadow: 0px 7px black;"><i><b>'$BLM'</b></i></h1>
  <p><i>"Yaptığım işi severek yapıyorum"</i></p>
</div>

<div class="row">
  <div class="side">
    <h2><b>HAKKIMDA</b></h2>
    <h5></h5>
    <div class="fakeimg2" style="height:40%;">
        <img src="'${arr[7]}'" width="100%" height="%100"  alt="Resim">
        <div>
        <h2 style="color: black; text-align:center; padding: 10px;"><i>'${arr[0]}' '${arr[1]}' </i></h2>
        </div>
      </div>
   
    <br>
    <div class="w3-container">
      <h2 style="padding: 10px;"><b>İLETİŞİM</b></h2>
      <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>'$BLM'</p>
      <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[2]}'</p>
      <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[3]}'</p>
      <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[8]}'</p>
      
      <h2 style="padding: 10px;"><b>İLGİ ALANLARI</b></h2>
      <p>'${dizi[0]}'</p>
      <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width: '$VALUE1'%">'$VALUE1'%</div>
      </div>
      <p>'${dizi[1]}'</p>
      <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width: '$VALUE2'%">'$VALUE2'%</div>
      </div>
      
    </div>
  </div>

  <div class="main">
    <h2><b>EĞİTİM BİLGİLERİ</b></h2>
    <p>'$EGM'</p>
    <div class="fakeimg" style="height:100px;"></div>
    <br>
    <hr>
    <h2><b>YAPTIĞIM PROJELER VE DENEYİMLER</b></h2>
    <h5 class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal"><a href="'${arr[4]}'">projelerim</a></h5>
    <p>'$PRJ'</p>
    <div class="fakeimg" style="height:100px;"></div>
    <br>
  </div>

</div>

<div class="footer">
  <a href="'${arr[5]}'"><h2 class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text'${arr[8]}'-teal"> </h2></a>
</div>

</body>
</html>'
)>mor.html

 
 else
 (
 echo '<!DOCTYPE html>
       <html lang="en">
       <head>
         <title>CV</title>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <style>

       #ana_div {
    
          height: 1305px;
          width: 1000px;
          margin-right: auto;
          margin-left: auto;
          margin-top: 10px;
          margin-bottom: 20px;
          background-color: rgb(94, 127, 235);
          border-radius: 50px 15px;
          border-style:solid;
          border-width: 2px;
          border-color: rgb(0, 0, 0);
          box-shadow: 5px 13px 10px 8px #242731;
    
                }

       .div1{
    
          float:right;
          border-radius: 10px 10px;
          height: 1270px;
          width: 550px;
          margin: 20px;
          color: rgb(10, 4, 4);
          background-color: rgb(245, 236, 236);
          border-style:solid;
          border-width: 2px;
          border-color: rgb(0, 0, 0);
   
         }

      .div2{
    
          float: left;
          border-radius: 10px 10px;
          height: 1270px;
          width: 350px;
          margin: 20px;
          color: rgb(0, 0, 0);
          background-color: rgb(245, 236, 236);
          border-style:solid;
          border-width: 2px;
          border-color: rgb(0, 0, 0);
    
         }

      .content {
          margin-left: 10px;
          margin-top: 24px;
          padding-left: 10px;
          background-color: rgba(179, 178, 180, 0.438);
          border-radius: 10px;

             }
             
      img {

          border-radius: 10px;

          }


      </style>

      </head>

      <body>
     
 <div id="ana_div">
    <div class="div1" id="div">
        <div class="content" style="height: 600px; width: 530px ;">
            <h2><b>YAPTIĞIM PROJELER VE DENEYİMLER</b></h2>
            <h5 class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal"><a href="'${arr[4]}'">projelerim</a></h5>
            <p>'$PRJ'</p>
        </div>

        <div class="content" style="height: 600px; width: 530px;">
            <h2><b>EĞİTİM BİLGİLERİ</b></h2>
            <p>'$EGM'</p>  
        </div>
    </div>

    <div class="div2" id="div2">
        <img src="'${arr[7]}'" width="100%" height="%100"  alt="Irem">
        
        <div>
            <h2 style="color: black; text-align:center; padding: 30px;"><i>'${arr[0]}' '${arr[1]}'</i></h2>
        </div>

        <div class="w3-container">
         <h2 style="padding: 20px;"><b>İLETİŞİM</b></h2>
         <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>'$BLM'</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[2]}'</p>
         <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[3]}'</p>
         <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>'${arr[8]}'</p>
         <a href="'${arr[5]}'"><p><i class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text-teal"></a></i>LINKEDIN</p>
        </div>

        <div class="w3-container">
          <h2 style="padding: 20px;"><b>İLGİ ALANLARI</b></h2>
          <p>'${dizi[0]}'</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width: '$VALUE1'%">'$VALUE1'%</div>
          </div>
          <p>'${dizi[1]}'</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width: '$VALUE2'%">'$VALUE2'%</div>
          </div>
        </div>
      </div>
    </div>
    
    
     </body>
     
</html>'
)>mavi.html
 
 fi
