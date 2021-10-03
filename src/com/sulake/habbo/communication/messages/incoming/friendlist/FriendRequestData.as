package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1160:int;
      
      private var var_2634:String;
      
      private var var_2633:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1160 = param1.readInteger();
         this.var_2634 = param1.readString();
         this.var_2633 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1160;
      }
      
      public function get requesterName() : String
      {
         return this.var_2634;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2633;
      }
   }
}
