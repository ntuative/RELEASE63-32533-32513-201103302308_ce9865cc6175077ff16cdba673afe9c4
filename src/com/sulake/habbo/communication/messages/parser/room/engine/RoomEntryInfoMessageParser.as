package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1849:Boolean;
      
      private var var_2621:int;
      
      private var var_446:Boolean;
      
      private var var_1173:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1849;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2621;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1173;
      }
      
      public function get owner() : Boolean
      {
         return this.var_446;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1173 != null)
         {
            this.var_1173.dispose();
            this.var_1173 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1849 = param1.readBoolean();
         if(this.var_1849)
         {
            this.var_2621 = param1.readInteger();
            this.var_446 = param1.readBoolean();
         }
         else
         {
            this.var_1173 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
