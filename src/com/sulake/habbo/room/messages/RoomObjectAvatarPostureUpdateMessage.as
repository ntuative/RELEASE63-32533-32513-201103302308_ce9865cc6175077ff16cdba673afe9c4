package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2648:String;
      
      private var var_1453:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         this.var_2648 = param1;
         this.var_1453 = param2;
      }
      
      public function get postureType() : String
      {
         return this.var_2648;
      }
      
      public function get parameter() : String
      {
         return this.var_1453;
      }
   }
}