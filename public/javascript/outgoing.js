function ugorpg() {
    var select = document.getElementById("type").value;
    console.log(select);
    var ug = document.querySelectorAll(".ug");
    var pg = document.querySelectorAll(".pg");
    if (select === "PG") {
        pg[1].setAttribute('name','branch');
        ug[1].setAttribute('name','');
      pg.forEach((pg) => {
        pg.style.display = "inline";
        ug.forEach((ug) => {
          ug.style.display = "none";
        });
      });
    }
    if (select === "UG") {
        pg[1].setAttribute('name','');
        ug[1].setAttribute('name','branch');
      ug.forEach((ug) => {
        ug.style.display = "inline";
        pg.forEach(pg=>{
            pg.style.display = 'none';
        });
      });
    }
  }