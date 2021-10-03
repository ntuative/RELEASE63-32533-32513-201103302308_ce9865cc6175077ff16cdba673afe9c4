package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2040:Boolean;
      
      private var _roomId:int;
      
      private var var_913:String;
      
      private var var_2777:int;
      
      private var var_2776:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2040 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_913 = param1.readString();
         this.var_2777 = param1.readInteger();
         this.var_2776 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2040;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_913;
      }
      
      public function get enterHour() : int
      {
         return this.var_2777;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2776;
      }
   }
}
