package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2215:String;
      
      private var var_2214:Array;
      
      private var var_2216:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2215 = param1;
         this.var_2214 = param2;
         this.var_2216 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2215;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2214;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2216;
      }
   }
}
