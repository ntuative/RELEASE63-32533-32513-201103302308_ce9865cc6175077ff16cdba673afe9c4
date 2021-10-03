package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_964:int = 20;
      
      private static const const_624:int = 10;
      
      private static const const_1318:int = 31;
      
      private static const const_1316:int = 32;
      
      private static const const_625:int = 30;
       
      
      private var var_310:Array;
      
      private var var_758:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_310 = new Array();
         super();
         super.setAnimation(const_625);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_758)
            {
               this.var_758 = true;
               this.var_310 = new Array();
               this.var_310.push(const_1318);
               this.var_310.push(const_1316);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_624)
         {
            if(this.var_758)
            {
               this.var_758 = false;
               this.var_310 = new Array();
               if(direction == 2)
               {
                  this.var_310.push(const_964 + 5 - param1);
                  this.var_310.push(const_624 + 5 - param1);
               }
               else
               {
                  this.var_310.push(const_964 + param1);
                  this.var_310.push(const_624 + param1);
               }
               this.var_310.push(const_625);
               return;
            }
            super.setAnimation(const_625);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_310.length > 0)
            {
               super.setAnimation(this.var_310.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
