package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1742:IID;
      
      private var var_753:Boolean;
      
      private var var_1131:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1742 = param1;
         this.var_1131 = new Array();
         this.var_753 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1742;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_753;
      }
      
      public function get receivers() : Array
      {
         return this.var_1131;
      }
      
      public function dispose() : void
      {
         if(!this.var_753)
         {
            this.var_753 = true;
            this.var_1742 = null;
            while(this.var_1131.length > 0)
            {
               this.var_1131.pop();
            }
            this.var_1131 = null;
         }
      }
   }
}
