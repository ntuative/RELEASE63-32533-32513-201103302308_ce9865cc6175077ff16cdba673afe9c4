package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_795:String = "RWUAM_WHISPER_USER";
      
      public static const const_740:String = "RWUAM_IGNORE_USER";
      
      public static const const_764:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_485:String = "RWUAM_KICK_USER";
      
      public static const const_706:String = "RWUAM_BAN_USER";
      
      public static const const_866:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_862:String = "RWUAM_RESPECT_USER";
      
      public static const const_695:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_672:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_732:String = "RWUAM_START_TRADING";
      
      public static const const_716:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_527:String = "RWUAM_KICK_BOT";
      
      public static const const_822:String = "RWUAM_REPORT";
      
      public static const const_441:String = "RWUAM_PICKUP_PET";
      
      public static const const_1577:String = "RWUAM_TRAIN_PET";
      
      public static const const_475:String = " RWUAM_RESPECT_PET";
      
      public static const const_360:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_900:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
