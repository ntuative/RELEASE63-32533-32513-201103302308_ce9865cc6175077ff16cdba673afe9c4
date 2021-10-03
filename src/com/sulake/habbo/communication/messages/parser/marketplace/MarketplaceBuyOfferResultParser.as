package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceBuyOfferResultParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_2726:int = -1;
      
      private var var_2727:int = -1;
      
      private var var_2725:int = -1;
      
      public function MarketplaceBuyOfferResultParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get offerId() : int
      {
         return this.var_2726;
      }
      
      public function get newPrice() : int
      {
         return this.var_2727;
      }
      
      public function get requestedOfferId() : int
      {
         return this.var_2725;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_2726 = param1.readInteger();
         this.var_2727 = param1.readInteger();
         this.var_2725 = param1.readInteger();
         return true;
      }
   }
}
