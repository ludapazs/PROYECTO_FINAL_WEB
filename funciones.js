// $(function() {
//     // Sidebar toggle behavior
//     $('#sidebarCollapse').on('click', function() {
//       $('#sidebar, #content').toggleClass('active');
//     });
//   });

//   $('.carousel.carousel-multi-item.v-2 .carousel-item').each(function(){
//     var next = $(this).next();
//     if (!next.length) {
//       next = $(this).siblings(':first');
//     }
//     next.children(':first-child').clone().appendTo($(this));
  
//     for (var i=0;i<4;i++) {
//       next=next.next();
//       if (!next.length) {
//         next=$(this).siblings(':first');
//       }
//       next.children(':first-child').clone().appendTo($(this));
//     }
//   });


//   // Carousel Auto-Cycle
//   $(document).ready(function() {
//     $('.carousel').carousel({
//       interval: 6000
//     })
//   });