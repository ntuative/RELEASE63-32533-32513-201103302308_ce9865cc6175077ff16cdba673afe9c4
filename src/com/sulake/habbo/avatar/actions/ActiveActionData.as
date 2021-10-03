package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1693:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1143:IActionDefinition;
      
      private var var_2450:int = 0;
      
      private var var_2451:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1693 = param1;
         this._actionParameter = param2;
         this.var_2450 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1693;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1143;
      }
      
      public function get id() : String
      {
         if(this.var_1143 == null)
         {
            return "";
         }
         return this.var_1143.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1143 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1693 = null;
         this._actionParameter = null;
         this.var_1143 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2450;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2451;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2451 = param1;
      }
   }
}
