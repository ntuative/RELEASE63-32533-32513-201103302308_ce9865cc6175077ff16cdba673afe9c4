package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_2628:Number = 0;
      
      private var var_2627:Number = 0;
      
      private var var_2626:Number = 0;
      
      private var var_2629:Number = 0;
      
      private var var_384:int = 0;
      
      private var var_2250:int = 0;
      
      private var var_334:Array;
      
      private var var_2625:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_334 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_154 = param3;
         this.var_153 = param4;
         this.var_2628 = param5;
         this.var_384 = param6;
         this.var_2250 = param7;
         this.var_2627 = param8;
         this.var_2626 = param9;
         this.var_2629 = param10;
         this.var_2625 = param11;
         this.var_334 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function get z() : Number
      {
         return this.var_153;
      }
      
      public function get localZ() : Number
      {
         return this.var_2628;
      }
      
      public function get targetX() : Number
      {
         return this.var_2627;
      }
      
      public function get targetY() : Number
      {
         return this.var_2626;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2629;
      }
      
      public function get dir() : int
      {
         return this.var_384;
      }
      
      public function get dirHead() : int
      {
         return this.var_2250;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2625;
      }
      
      public function get actions() : Array
      {
         return this.var_334.slice();
      }
   }
}
