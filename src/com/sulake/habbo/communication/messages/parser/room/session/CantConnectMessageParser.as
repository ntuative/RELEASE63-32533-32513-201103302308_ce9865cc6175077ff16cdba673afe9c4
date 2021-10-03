package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1718:int = 1;
      
      public static const const_1861:int = 2;
      
      public static const const_1741:int = 3;
      
      public static const const_1463:int = 4;
       
      
      private var var_1454:int = 0;
      
      private var var_1453:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1454 = 0;
         this.var_1453 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1454 = param1.readInteger();
         if(this.var_1454 == 3)
         {
            this.var_1453 = param1.readString();
         }
         else
         {
            this.var_1453 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1454;
      }
      
      public function get parameter() : String
      {
         return this.var_1453;
      }
   }
}
