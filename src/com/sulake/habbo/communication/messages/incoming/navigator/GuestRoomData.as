package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_370:int;
      
      private var var_705:Boolean;
      
      private var var_913:String;
      
      private var _ownerName:String;
      
      private var var_2182:int;
      
      private var var_2364:int;
      
      private var var_2363:int;
      
      private var var_1630:String;
      
      private var var_2362:int;
      
      private var var_2179:Boolean;
      
      private var var_822:int;
      
      private var var_1413:int;
      
      private var var_2361:String;
      
      private var var_852:Array;
      
      private var var_2365:RoomThumbnailData;
      
      private var var_2340:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_852 = new Array();
         super();
         this.var_370 = param1.readInteger();
         this.var_705 = param1.readBoolean();
         this.var_913 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2182 = param1.readInteger();
         this.var_2364 = param1.readInteger();
         this.var_2363 = param1.readInteger();
         this.var_1630 = param1.readString();
         this.var_2362 = param1.readInteger();
         this.var_2179 = param1.readBoolean();
         this.var_822 = param1.readInteger();
         this.var_1413 = param1.readInteger();
         this.var_2361 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_852.push(_loc4_);
            _loc3_++;
         }
         this.var_2365 = new RoomThumbnailData(param1);
         this.var_2340 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_852 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_370;
      }
      
      public function get event() : Boolean
      {
         return this.var_705;
      }
      
      public function get roomName() : String
      {
         return this.var_913;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2182;
      }
      
      public function get userCount() : int
      {
         return this.var_2364;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2363;
      }
      
      public function get description() : String
      {
         return this.var_1630;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2362;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2179;
      }
      
      public function get score() : int
      {
         return this.var_822;
      }
      
      public function get categoryId() : int
      {
         return this.var_1413;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2361;
      }
      
      public function get tags() : Array
      {
         return this.var_852;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2365;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2340;
      }
   }
}
