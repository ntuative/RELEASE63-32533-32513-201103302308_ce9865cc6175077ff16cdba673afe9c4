package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2830:Boolean;
      
      private var var_2829:int;
      
      private var var_1887:Array;
      
      private var var_792:Array;
      
      private var var_791:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2830;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2829;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1887;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_792;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_791;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1887 = [];
         this.var_792 = [];
         this.var_791 = [];
         this.var_2830 = param1.readBoolean();
         this.var_2829 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1887.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_792.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_791.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
