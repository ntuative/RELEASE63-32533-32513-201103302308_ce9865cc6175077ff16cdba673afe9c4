package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2189:Number = 0.0;
      
      private var var_2191:Number = 0.0;
      
      private var var_2192:Number = 0.0;
      
      private var var_2190:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2189 = param1;
         this.var_2191 = param2;
         this.var_2192 = param3;
         this.var_2190 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2189;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2191;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2192;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2190;
      }
   }
}
