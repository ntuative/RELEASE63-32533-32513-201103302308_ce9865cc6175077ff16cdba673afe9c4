package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1450:IID;
      
      private var var_1788:String;
      
      private var var_109:IUnknown;
      
      private var var_766:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1450 = param1;
         this.var_1788 = getQualifiedClassName(this.var_1450);
         this.var_109 = param2;
         this.var_766 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1450;
      }
      
      public function get iis() : String
      {
         return this.var_1788;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_109;
      }
      
      public function get references() : uint
      {
         return this.var_766;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_109 == null;
      }
      
      public function dispose() : void
      {
         this.var_1450 = null;
         this.var_1788 = null;
         this.var_109 = null;
         this.var_766 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_766;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_766) : uint(0);
      }
   }
}
