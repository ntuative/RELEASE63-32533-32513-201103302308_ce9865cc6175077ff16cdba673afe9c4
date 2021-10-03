package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2461:int;
      
      private var var_1335:String;
      
      private var var_2612:int;
      
      private var var_2615:int;
      
      private var _category:int;
      
      private var var_2096:String;
      
      private var var_1490:int;
      
      private var var_2610:int;
      
      private var var_2609:int;
      
      private var var_2611:int;
      
      private var var_2614:int;
      
      private var var_2613:Boolean;
      
      private var var_2941:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2461 = param1;
         this.var_1335 = param2;
         this.var_2612 = param3;
         this.var_2615 = param4;
         this._category = param5;
         this.var_2096 = param6;
         this.var_1490 = param7;
         this.var_2610 = param8;
         this.var_2609 = param9;
         this.var_2611 = param10;
         this.var_2614 = param11;
         this.var_2613 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2461;
      }
      
      public function get itemType() : String
      {
         return this.var_1335;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2612;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2615;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2096;
      }
      
      public function get extra() : int
      {
         return this.var_1490;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2610;
      }
      
      public function get creationDay() : int
      {
         return this.var_2609;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2611;
      }
      
      public function get creationYear() : int
      {
         return this.var_2614;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2613;
      }
      
      public function get songID() : int
      {
         return this.var_1490;
      }
   }
}
