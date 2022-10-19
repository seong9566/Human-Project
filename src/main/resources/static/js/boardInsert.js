function setThumbnail(event) {
   let reader = new FileReader();

   reader.onload = function(event) {
      if (document.getElementById("newImg")) {
         document.getElementById("newImg").remove();
      }
      let img = document.createElement("img");
      img.setAttribute("src", event.target.result);
      img.setAttribute("id", "newImg");
      document.querySelector("#imageContainer").appendChild(img);
   };
   reader.readAsDataURL(event.target.files[0]);
}