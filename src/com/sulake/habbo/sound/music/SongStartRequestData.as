package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2100:int;
      
      private var var_1597:Number;
      
      private var var_2143:Number;
      
      private var var_2144:int;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number)
      {
         super();
         this.var_2100 = param1;
         this.var_1597 = param2;
         this.var_2143 = param3;
         this.var_2144 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2100;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1597 < 0)
         {
            return 0;
         }
         return this.var_1597 + (getTimer() - this.var_2144) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2143;
      }
   }
}
