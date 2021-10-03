package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_324:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1630:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_2652:Boolean = false;
      
      private var var_2653:Boolean = false;
      
      private var var_1994:Boolean = false;
      
      private var var_1993:Boolean = false;
      
      private var var_2356:Boolean = false;
      
      private var var_1677:int = -1;
      
      private var var_2242:int = -1;
      
      private var _offerId:int = -1;
      
      private var var_1385:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1630 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1630;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2652 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2652;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2653 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2653;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1994;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1993 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1993;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2356 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2356;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_1677 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_1677;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2242;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1385 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1385;
      }
   }
}
