package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_476:String = "ROFCAE_DICE_OFF";
      
      public static const const_500:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_557:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_560:String = "ROFCAE_STICKIE";
      
      public static const const_572:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_457:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_505:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_596:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_538:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_449:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_440:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_453:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_498:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_548:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_499:String = "ROFCAE_JUKEBOX_DISPOSE";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
