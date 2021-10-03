package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2734:String;
      
      private var var_1932:String;
      
      private var var_2733:String;
      
      private var var_1934:Boolean;
      
      private var var_1933:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2734 = String(param1["set-type"]);
         this.var_1932 = String(param1["flipped-set-type"]);
         this.var_2733 = String(param1["remove-set-type"]);
         this.var_1934 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1933 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1933;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1933 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2734;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1932;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2733;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1934;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1934 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1932 = param1;
      }
   }
}
