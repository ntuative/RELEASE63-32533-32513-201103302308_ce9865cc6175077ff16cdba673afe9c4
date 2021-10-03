package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1463:int;
      
      private var var_1789:int;
      
      private var var_2546:int;
      
      private var var_1819:int;
      
      private var var_1462:int;
      
      private var var_2412:String = "";
      
      private var var_2779:String = "";
      
      private var var_2778:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1463 = param1.readInteger();
         this.var_2412 = param1.readString();
         this.var_1789 = param1.readInteger();
         this.var_2546 = param1.readInteger();
         this.var_1819 = param1.readInteger();
         this.var_1462 = param1.readInteger();
         this.var_2778 = param1.readInteger();
         this.var_2779 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1463;
      }
      
      public function get points() : int
      {
         return this.var_1789;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2546;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1819;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1462;
      }
      
      public function get badgeID() : String
      {
         return this.var_2412;
      }
      
      public function get achievementID() : int
      {
         return this.var_2778;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2779;
      }
   }
}
