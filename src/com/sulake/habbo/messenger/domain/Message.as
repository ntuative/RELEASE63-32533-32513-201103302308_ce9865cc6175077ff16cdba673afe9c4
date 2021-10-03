package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_793:int = 1;
      
      public static const const_898:int = 2;
      
      public static const const_659:int = 3;
      
      public static const const_1053:int = 4;
      
      public static const const_804:int = 5;
      
      public static const const_1219:int = 6;
       
      
      private var _type:int;
      
      private var var_1251:int;
      
      private var var_2146:String;
      
      private var var_2645:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1251 = param2;
         this.var_2146 = param3;
         this.var_2645 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2146;
      }
      
      public function get time() : String
      {
         return this.var_2645;
      }
      
      public function get senderId() : int
      {
         return this.var_1251;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
