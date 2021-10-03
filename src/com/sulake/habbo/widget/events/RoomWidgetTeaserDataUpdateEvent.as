package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_550:String = "RWTDUE_TEASER_DATA";
      
      public static const const_847:String = "RWTDUE_GIFT_DATA";
      
      public static const const_667:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_361:int;
      
      private var _data:String;
      
      private var var_406:int;
      
      private var var_193:String;
      
      private var var_2198:String;
      
      private var var_2204:Boolean;
      
      private var var_1528:int = 0;
      
      private var var_2759:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_361;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2198;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2204;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2759;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1528;
      }
      
      public function set status(param1:int) : void
      {
         this.var_406 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2198 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2204 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2759 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_361 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_193;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_193 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1528 = param1;
      }
   }
}
