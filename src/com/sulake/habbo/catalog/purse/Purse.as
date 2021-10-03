package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_183:int = 0;
       
      
      private var var_2465:int = 0;
      
      private var var_1447:Dictionary;
      
      private var var_1775:int = 0;
      
      private var var_1776:int = 0;
      
      private var var_2464:Boolean = false;
      
      private var var_2467:int = 0;
      
      private var var_2466:int = 0;
      
      public function Purse()
      {
         this.var_1447 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2465;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1775;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1775 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1776;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1776 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1775 > 0 || this.var_1776 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2464;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2467;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2467 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2466;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2466 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1447;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1447 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1447[param1];
      }
   }
}
