package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_74:String = "i";
      
      public static const const_87:String = "s";
      
      public static const const_207:String = "e";
       
      
      private var var_1676:String;
      
      private var var_2589:int;
      
      private var var_1385:String;
      
      private var var_1384:int;
      
      private var var_1677:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1676 = param1.readString();
         this.var_2589 = param1.readInteger();
         this.var_1385 = param1.readString();
         this.var_1384 = param1.readInteger();
         this.var_1677 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1676;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2589;
      }
      
      public function get extraParam() : String
      {
         return this.var_1385;
      }
      
      public function get productCount() : int
      {
         return this.var_1384;
      }
      
      public function get expiration() : int
      {
         return this.var_1677;
      }
   }
}
