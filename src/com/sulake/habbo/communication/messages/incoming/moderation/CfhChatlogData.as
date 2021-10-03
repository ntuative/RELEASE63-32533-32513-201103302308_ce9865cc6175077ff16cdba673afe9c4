package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1859:int;
      
      private var var_2643:int;
      
      private var var_1367:int;
      
      private var var_2402:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1859 = param1.readInteger();
         this.var_2643 = param1.readInteger();
         this.var_1367 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this.var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1859);
      }
      
      public function get callId() : int
      {
         return this.var_1859;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2643;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1367;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2402;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_112;
      }
   }
}
