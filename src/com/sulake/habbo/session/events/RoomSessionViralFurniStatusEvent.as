package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_477:String = "RSVFS_STATUS";
      
      public static const const_465:String = "RSVFS_RECEIVED";
       
      
      private var var_193:String;
      
      private var var_361:int;
      
      private var var_406:int = -1;
      
      private var _shareId:String;
      
      private var var_2198:String;
      
      private var var_2204:Boolean;
      
      private var var_1528:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_406 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_361;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2198;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2204;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1528;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_361 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_406 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2198 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2204 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1528 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_193;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_193 = param1;
      }
   }
}
