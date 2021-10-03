package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1630:String;
      
      private var var_2182:int;
      
      private var _password:String;
      
      private var var_1413:int;
      
      private var var_2337:int;
      
      private var var_852:Array;
      
      private var var_2339:Array;
      
      private var var_2340:Boolean;
      
      private var var_2335:Boolean;
      
      private var var_2338:Boolean;
      
      private var var_2333:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2340;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2340 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2335;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2335 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2338;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2338 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2333;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2333 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1630;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1630 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2182;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2182 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1413;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1413 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2337;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2337 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_852;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_852 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2339;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2339 = param1;
      }
   }
}
