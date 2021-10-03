package com.sulake.habbo.help.enum
{
   import flash.events.Event;
   
   public class HabboHelpTutorialEvent extends Event
   {
      
      public static const const_117:String = "HHTPNUFWE_AVATAR_TUTORIAL_START";
      
      public static const const_512:String = "HHTPNUFWE_LIGHT_CLOTHES_ICON";
      
      public static const const_510:String = "HHTPNUFWE_DONE_GUIDEBOT";
      
      public static const const_518:String = "HHTE_DONE_AVATAR_EDITOR_OPENING";
      
      public static const const_454:String = "HHTE_DONE_AVATAR_EDITOR_CLOSING";
       
      
      public function HabboHelpTutorialEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
