package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1968:int;
      
      private var var_2145:String;
      
      private var var_1017:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1968 = param1.readInteger();
         this.var_2145 = param1.readString();
         this.var_1017 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1968;
      }
      
      public function get figureString() : String
      {
         return this.var_2145;
      }
      
      public function get gender() : String
      {
         return this.var_1017;
      }
   }
}
