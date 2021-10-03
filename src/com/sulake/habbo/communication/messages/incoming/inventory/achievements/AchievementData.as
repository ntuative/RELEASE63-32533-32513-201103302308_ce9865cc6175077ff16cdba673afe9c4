package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1463:int;
      
      private var var_311:String;
      
      private var var_2606:int;
      
      private var var_2546:int;
      
      private var var_1819:int;
      
      private var var_2605:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1463 = param1.readInteger();
         this.var_311 = param1.readString();
         this.var_2606 = param1.readInteger();
         this.var_2546 = param1.readInteger();
         this.var_1819 = param1.readInteger();
         this.var_2605 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_311;
      }
      
      public function get level() : int
      {
         return this.var_1463;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2606;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2546;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1819;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2605;
      }
   }
}
