package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2782:int;
      
      private var var_2781:int;
      
      private var var_2780:int;
      
      private var var_2783:String;
      
      private var var_1771:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2782 = param1.readInteger();
         this.var_2781 = param1.readInteger();
         this.var_2780 = param1.readInteger();
         this.var_2783 = param1.readString();
         this.var_1771 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2782;
      }
      
      public function get minute() : int
      {
         return this.var_2781;
      }
      
      public function get chatterId() : int
      {
         return this.var_2780;
      }
      
      public function get chatterName() : String
      {
         return this.var_2783;
      }
      
      public function get msg() : String
      {
         return this.var_1771;
      }
   }
}
