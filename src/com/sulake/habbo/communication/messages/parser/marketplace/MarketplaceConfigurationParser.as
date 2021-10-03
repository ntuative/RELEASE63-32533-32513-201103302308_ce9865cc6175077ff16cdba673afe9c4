package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1532:Boolean;
      
      private var var_2271:int;
      
      private var var_1682:int;
      
      private var var_1681:int;
      
      private var var_2269:int;
      
      private var var_2267:int;
      
      private var var_2266:int;
      
      private var var_2270:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1532;
      }
      
      public function get commission() : int
      {
         return this.var_2271;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1682;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1681;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2267;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2269;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2266;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2270;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1532 = param1.readBoolean();
         this.var_2271 = param1.readInteger();
         this.var_1682 = param1.readInteger();
         this.var_1681 = param1.readInteger();
         this.var_2267 = param1.readInteger();
         this.var_2269 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         return true;
      }
   }
}
