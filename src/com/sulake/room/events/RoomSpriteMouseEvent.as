package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1614:String = "";
      
      private var var_1851:String = "";
      
      private var var_2121:String = "";
      
      private var var_2118:Number = 0;
      
      private var var_2120:Number = 0;
      
      private var var_2124:Number = 0;
      
      private var var_2122:Number = 0;
      
      private var var_2117:Boolean = false;
      
      private var var_2119:Boolean = false;
      
      private var var_2125:Boolean = false;
      
      private var var_2123:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1614 = param2;
         this.var_1851 = param3;
         this.var_2121 = param4;
         this.var_2118 = param5;
         this.var_2120 = param6;
         this.var_2124 = param7;
         this.var_2122 = param8;
         this.var_2117 = param9;
         this.var_2119 = param10;
         this.var_2125 = param11;
         this.var_2123 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1614;
      }
      
      public function get canvasId() : String
      {
         return this.var_1851;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2121;
      }
      
      public function get screenX() : Number
      {
         return this.var_2118;
      }
      
      public function get screenY() : Number
      {
         return this.var_2120;
      }
      
      public function get localX() : Number
      {
         return this.var_2124;
      }
      
      public function get localY() : Number
      {
         return this.var_2122;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2117;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2119;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2125;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2123;
      }
   }
}
