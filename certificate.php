<html lang="en">
<head>
<style>




img{
  max-width: 950px;
  max-height: 721px;
  align-content: center;
  
}

h1{
    display: flex;
    justify-content: center;
    position: sticky;
    margin: -400px 45px 34px 346px;
    color: #E1BA61;
    flex-direction: column;
}

div{
  white-space: nowrap;
  margin: 80px 20px 20px 40px;
    max-width: 100%;
  max-height: 100%; 
/*   background-image: url("");  */
}
<link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/select2/select2.min.css">
    <link rel="stylesheet" href="vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css" />

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </style>
  <title>text print</title>
</head>
<body>
    
  <script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.js"></script>
  <input type="text" placeholder='your name' id="name">
  <input type="submit" value="Submit" onClick='submit();'>
  <input type="submit" value="Download" onClick='Download();'>
<!--   <input type="submit" value="Download"> -->
  <div class="dynamic-content">
    <img src="https://purepng.com/public/uploads/large/purepng.com-certificate-templateobjectscertificate-templateobject-award-certificate-template-631522323360ryv35.png" alt="certificate">
  <h1 id="display_name">Your name here</h1>
  </div>
  
  <script>
  function submit(){
  document.getElementById("display_name").innerHTML = document.getElementById("name").value
}

function Download(){

  
  domtoimage.toJpeg(document.getElementsByClassName("dynamic-content"), { quality: 1 })
    .then(function (dataUrl) {
        var link = document.createElement('a');
        link.download = 'my-image-name.jpeg';
        link.href = dataUrl;
        link.click();
    });
}


  </script>
 
</body>
</html>