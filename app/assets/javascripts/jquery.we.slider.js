(function($) {
   $.fn.WESlider = function(options) {

      var settings = $.extend({
         speed: 1000
      }, options);

      return this.each(function() {
         elem = $(this);
         elem.css('position', 'relative');

         $("<img/>")
            .attr("src", elem.find('img:visible').attr("src"))
            .load(function() {
               elem.height(elem.find('a:first').height());
            });



         elem.children().each(function(){
            $(this).css({'position': 'absolute', 'top': 0, 'left': 0});
         })
         elem.children().not(':first').hide();

         var intVal = self.setInterval(function(){ slide(elem) }, settings.speed );
      });

      function slide(elem) {
         visibleElem = elem.children(':visible');
         nextElem = visibleElem.nextRotator();
         visibleElem.fadeOut();
         nextElem.fadeIn();
      }
   }
   
})(jQuery);