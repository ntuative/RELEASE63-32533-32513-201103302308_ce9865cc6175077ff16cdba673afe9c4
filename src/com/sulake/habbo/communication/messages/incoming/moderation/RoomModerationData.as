package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_370:int;
      
      private var var_2364:int;
      
      private var var_2708:Boolean;
      
      private var var_2323:int;
      
      private var _ownerName:String;
      
      private var var_112:RoomData;
      
      private var var_705:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_370 = param1.readInteger();
         this.var_2364 = param1.readInteger();
         this.var_2708 = param1.readBoolean();
         this.var_2323 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_112 = new RoomData(param1);
         this.var_705 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_112 != null)
         {
            this.var_112.dispose();
            this.var_112 = null;
         }
         if(this.var_705 != null)
         {
            this.var_705.dispose();
            this.var_705 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_370;
      }
      
      public function get userCount() : int
      {
         return this.var_2364;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2708;
      }
      
      public function get ownerId() : int
      {
         return this.var_2323;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_112;
      }
      
      public function get event() : RoomData
      {
         return this.var_705;
      }
   }
}
