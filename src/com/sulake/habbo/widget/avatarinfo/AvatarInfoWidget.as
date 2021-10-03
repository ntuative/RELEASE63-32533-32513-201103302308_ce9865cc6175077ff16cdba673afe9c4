package com.sulake.habbo.widget.avatarinfo
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarInfoEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserDataUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserLocationUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetGetUserLocationMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AvatarInfoWidget extends RoomWidgetBase implements IUpdateReceiver
   {
       
      
      private var var_22:Component;
      
      private var _view:AvatarInfoView;
      
      private var var_196:Boolean = false;
      
      private var var_1838:Boolean = false;
      
      private var var_1261:Timer;
      
      private var var_2912:int = 3000;
      
      private var var_1535:Boolean;
      
      private var var_1021:Boolean;
      
      private var var_765:Number;
      
      private var var_1536:int;
      
      private var var_2913:int = 500;
      
      public function AvatarInfoWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         super(param1,param2,param3);
         this.var_22 = param4;
         this.var_1535 = false;
         this.var_1021 = false;
         this.var_1261 = new Timer(this.var_2912,1);
         this.var_1261.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
      }
      
      private function onTimerComplete(param1:TimerEvent) : void
      {
         this.var_1021 = true;
         this.var_1536 = 0;
      }
      
      private function getOwnCharacterInfo() : void
      {
         messageListener.processWidgetMessage(new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_937,0,0));
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         if(this.var_22)
         {
            this.var_22.removeUpdateReceiver(this);
            this.var_22 = null;
         }
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetAvatarInfoEvent.const_122,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_119,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_139,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_151,this.updateEventHandler);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_324,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserDataUpdateEvent.const_115,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_160,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_89,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_397,this.updateEventHandler);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetAvatarInfoEvent.const_122,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_119,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_139,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_151,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_324,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserDataUpdateEvent.const_115,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_160,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_89,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_397,this.updateEventHandler);
      }
      
      private function updateEventHandler(param1:RoomWidgetUpdateEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(param1.type)
         {
            case RoomWidgetAvatarInfoEvent.const_122:
               _loc2_ = param1 as RoomWidgetAvatarInfoEvent;
               this.updateView(_loc2_.userId,_loc2_.userName,_loc2_.roomIndex,RoomObjectTypeEnum.const_174,_loc2_.allowNameChange);
               this.var_196 = true;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_151:
            case RoomWidgetFurniInfoUpdateEvent.const_324:
               this.removeView();
               break;
            case RoomWidgetUserInfoUpdateEvent.const_119:
               this.getOwnCharacterInfo();
               break;
            case RoomWidgetUserInfoUpdateEvent.const_139:
               _loc3_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.updateView(_loc3_.webID,_loc3_.name,_loc3_.userRoomId,RoomObjectTypeEnum.const_174);
               break;
            case RoomWidgetUserInfoUpdateEvent.BOT:
               _loc4_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.updateView(_loc4_.webID,_loc4_.name,_loc4_.userRoomId,RoomObjectTypeEnum.const_860);
               break;
            case RoomWidgetPetInfoUpdateEvent.PET_INFO:
               _loc5_ = param1 as RoomWidgetPetInfoUpdateEvent;
               this.updateView(_loc5_.id,_loc5_.name,_loc5_.roomIndex,RoomObjectTypeEnum.const_187);
               break;
            case RoomWidgetUserDataUpdateEvent.const_115:
               if(!this.var_196)
               {
                  this.getOwnCharacterInfo();
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_160:
               _loc6_ = param1 as RoomWidgetRoomObjectUpdateEvent;
               if(this._view && this._view.roomIndex == _loc6_.id)
               {
                  this.disposeView();
               }
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_89:
               this.var_1838 = false;
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_397:
               this.var_1838 = true;
         }
         this.method_3();
      }
      
      private function updateView(param1:int, param2:String, param3:int, param4:int, param5:Boolean = false) : void
      {
         this.var_1021 = false;
         if(this.var_1261.running)
         {
            this.var_1261.stop();
         }
         if(this._view == null || this._view.userId != param1 || this._view.userName != param2 || this._view.roomIndex != param3 || this._view.userType != param4)
         {
            if(this._view)
            {
               this.disposeView();
            }
            if(!this.var_1838)
            {
               this._view = new AvatarInfoView(this,param1,param2,param3,param4,param5);
            }
         }
      }
      
      public function disposeView() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
            this.var_1535 = true;
            this.var_1021 = false;
         }
      }
      
      private function removeView() : void
      {
         if(!this.var_1535)
         {
            this.var_1535 = true;
            this.var_1261.start();
         }
         else if(!this.var_1021)
         {
            this.disposeView();
         }
      }
      
      public function method_3() : void
      {
         if(!this.var_22)
         {
            return;
         }
         if(this._view)
         {
            this.var_22.registerUpdateReceiver(this,10);
         }
         else
         {
            this.var_22.removeUpdateReceiver(this);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(!this._view)
         {
            return;
         }
         _loc2_ = messageListener.processWidgetMessage(new RoomWidgetGetUserLocationMessage(this._view.userId,this._view.userType)) as RoomWidgetUserLocationUpdateEvent;
         if(!_loc2_)
         {
            return;
         }
         if(this.var_1021)
         {
            this.var_1536 += param1;
            this.var_765 = 1 - this.var_1536 / Number(this.var_2913);
         }
         else
         {
            this.var_765 = 1;
         }
         if(this.var_765 <= 0)
         {
            this.disposeView();
            return;
         }
         this._view.update(_loc2_.rectangle,this.var_765);
         this.method_3();
      }
   }
}
