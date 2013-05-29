(function($) {   
   $.fn.nextRotator = function(){

      var elem;

      this.each(function() {
         $this = $(this);

         if($this.next().length){
            elem = $this.next();
         }else{
            elem = $this.parent().children(':first');
         }
      });

      return elem;
   }
})(jQuery);