package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_814:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_657:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_814);
         this.var_657 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_657;
      }
   }
}
