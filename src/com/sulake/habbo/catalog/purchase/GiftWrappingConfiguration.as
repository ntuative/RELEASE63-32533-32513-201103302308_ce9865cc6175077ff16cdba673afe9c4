package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1532:Boolean = false;
      
      private var var_1653:int;
      
      private var var_1887:Array;
      
      private var var_792:Array;
      
      private var var_791:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1532 = _loc2_.isWrappingEnabled;
         this.var_1653 = _loc2_.wrappingPrice;
         this.var_1887 = _loc2_.stuffTypes;
         this.var_792 = _loc2_.boxTypes;
         this.var_791 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1532;
      }
      
      public function get price() : int
      {
         return this.var_1653;
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
   }
}
