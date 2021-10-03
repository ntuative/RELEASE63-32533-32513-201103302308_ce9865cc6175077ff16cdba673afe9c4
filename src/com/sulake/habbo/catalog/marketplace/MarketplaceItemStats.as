package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2233:int;
      
      private var var_2655:int;
      
      private var var_2657:int;
      
      private var _dayOffsets:Array;
      
      private var var_1873:Array;
      
      private var var_1872:Array;
      
      private var var_2658:int;
      
      private var var_2656:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get method_1() : int
      {
         return this.var_2233;
      }
      
      public function get offerCount() : int
      {
         return this.var_2655;
      }
      
      public function get historyLength() : int
      {
         return this.var_2657;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1873;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1872;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2658;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2656;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2233 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2655 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2657 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1873 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1872 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2658 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2656 = param1;
      }
   }
}
