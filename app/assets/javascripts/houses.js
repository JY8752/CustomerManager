
// document.addEventListener('turbolinks:load', function() {
//   const apartments = document.getElementsByClassName('apartment');
//   const radio_s = document.getElementById('house_style_戸建');
//   const radio_m = document.getElementById('house_style_集合住宅');

//   addEventListener('onclick', radio() {

//   function radio() {
//   if(radio_s.checked ) {
//     apartments[0].style.display = "none";
//     apartments[1].style.display = "none";
//   }else if(radio_m.checked) {
//       apartments[0].style.display = "block";
//       apartments[1].style.display = "block";
//       }
//     }
//   });
// });

document.addEventListener('turbolinks:load', function() {
  const apartments = document.getElementsByClassName('apartment');
  const radio_s = document.getElementById('house_style_戸建');
  const radio_m = document.getElementById('house_style_集合住宅');

  function radio() {
    if(radio_s.checked) {
      apartments[0].style.display = "none";
      apartments[1].style.display = "none";
    }else if(radio_m.checked) {
      apartments[0].style.display = "block";
      apartments[1].style.display = "block";
    }
  };
  radio_s.addEventListener('click', radio);
  radio_m.addEventListener('click', radio);
});