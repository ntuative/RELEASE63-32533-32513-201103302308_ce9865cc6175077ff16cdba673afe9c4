package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2638:Number;
      
      private var var_1781:Number;
      
      private var var_974:Number;
      
      private var var_546:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2638 = param1;
         this.var_1781 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_974 = param1;
         this.var_546 = 0;
      }
      
      public function update() : void
      {
         this.var_974 += this.var_1781;
         this.var_546 += this.var_974;
         if(this.var_546 > 0)
         {
            this.var_546 = 0;
            this.var_974 = this.var_2638 * -1 * this.var_974;
         }
      }
      
      public function get location() : Number
      {
         return this.var_546;
      }
   }
}
