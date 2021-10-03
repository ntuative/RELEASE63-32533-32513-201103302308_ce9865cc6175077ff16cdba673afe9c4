package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2230:int;
      
      private var var_2096:String;
      
      private var var_1653:int;
      
      private var var_2233:int;
      
      private var var_2232:int;
      
      private var var_406:int;
      
      private var var_2231:int = -1;
      
      private var var_1654:int;
      
      private var var_45:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2230 = param3;
         this.var_2096 = param4;
         this.var_1653 = param5;
         this.var_406 = param6;
         this.var_2233 = param7;
         this.var_1654 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_45)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2230;
      }
      
      public function get stuffData() : String
      {
         return this.var_2096;
      }
      
      public function get price() : int
      {
         return this.var_1653;
      }
      
      public function get method_1() : int
      {
         return this.var_2233;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_45 != null)
         {
            this.var_45.dispose();
         }
         this.var_45 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2232 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2232;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2231;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2231 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1653 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1654;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1654 = param1;
      }
   }
}
