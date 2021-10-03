package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2131:int;
      
      private var var_1335:String;
      
      private var _objId:int;
      
      private var var_1777:int;
      
      private var _category:int;
      
      private var var_2096:String;
      
      private var var_2134:Boolean;
      
      private var var_2136:Boolean;
      
      private var var_2132:Boolean;
      
      private var var_2133:Boolean;
      
      private var var_2135:int;
      
      private var var_1490:int;
      
      private var var_1968:String = "";
      
      private var var_2100:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2131 = param1;
         this.var_1335 = param2;
         this._objId = param3;
         this.var_1777 = param4;
         this._category = param5;
         this.var_2096 = param6;
         this.var_2134 = param7;
         this.var_2136 = param8;
         this.var_2132 = param9;
         this.var_2133 = param10;
         this.var_2135 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1968 = param1;
         this.var_1490 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2131;
      }
      
      public function get itemType() : String
      {
         return this.var_1335;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1777;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2096;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2134;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2136;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2132;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2133;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2135;
      }
      
      public function get slotId() : String
      {
         return this.var_1968;
      }
      
      public function get songId() : int
      {
         return this.var_2100;
      }
      
      public function get extra() : int
      {
         return this.var_1490;
      }
   }
}
