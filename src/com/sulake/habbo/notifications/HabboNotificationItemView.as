package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class HabboNotificationItemView implements IUpdateReceiver
   {
      
      public static const const_828:int = 70;
      
      public static const const_468:int = 4;
      
      private static const name_3:int = 0;
      
      private static const const_508:int = 1;
      
      private static const const_986:int = 2;
      
      private static const const_985:int = 3;
      
      private static const const_430:Number = 50;
       
      
      private var var_187:IHabboToolbar;
      
      private var _window:IWindow;
      
      private var var_226:HabboNotificationItem;
      
      private var var_1784:Boolean = false;
      
      private var var_2690:Map;
      
      private var var_442:Map;
      
      private var var_1150:uint;
      
      private var var_1149:uint;
      
      private var var_1449:uint;
      
      private var var_764:int;
      
      private var var_765:Number;
      
      private var var_1783:int;
      
      private var var_1782:int;
      
      private var _state:int;
      
      public function HabboNotificationItemView(param1:IAsset, param2:IHabboWindowManager, param3:Map, param4:Map, param5:IHabboToolbar, param6:HabboNotificationItem)
      {
         super();
         this.var_2690 = param3;
         this.var_442 = param4;
         var _loc7_:XmlAsset = param1 as XmlAsset;
         if(_loc7_ == null)
         {
            return;
         }
         this._window = param2.buildFromXML(_loc7_.content as XML,1);
         this._window.tags.push("notificationview");
         this._window.context.getDesktopWindow().addEventListener(WindowEvent.const_49,this.onRoomViewResized);
         this._window.procedure = this.onWindowEvent;
         this._window.blend = 0;
         this._window.visible = false;
         var _loc8_:ITextWindow = IWindowContainer(this._window).findChildByTag("notification_text") as ITextWindow;
         if(_loc8_ != null)
         {
            this.var_1783 = this._window.height - _loc8_.rectangle.bottom;
         }
         else
         {
            this.var_1783 = 15;
         }
         this.var_1782 = this._window.height;
         this.var_764 = 4;
         this.var_765 = 0;
         this._state = name_3;
         this.var_187 = param5;
         this.showItem(param6);
      }
      
      public function get disposed() : Boolean
      {
         return this._window == null;
      }
      
      public function get ready() : Boolean
      {
         return this._state == name_3;
      }
      
      public function get verticalPosition() : int
      {
         return this.var_764;
      }
      
      private function showItem(param1:HabboNotificationItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = param1.content;
         this.setNotificationText(_loc2_);
         var _loc3_:BitmapData = param1.style.icon;
         this.setNotificationIcon(_loc3_);
         this.var_226 = param1;
         this.reposition();
         this.startFadeIn();
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         if(param1.badgeId != this.var_226.style.iconSrc)
         {
            return;
         }
         if(param1.badgeImage != null)
         {
            this.setNotificationIcon(param1.badgeImage);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         switch(this._state)
         {
            case name_3:
               break;
            case const_508:
               this.var_1150 += param1;
               _loc2_ = Number(this.var_1150) / Number(this.var_442["time_fade_in"]);
               if(this.var_1150 > int(this.var_442["time_fade_in"]))
               {
                  this.startDisplay();
               }
               this.adjustBlend(_loc2_);
               break;
            case const_986:
               this.var_1449 += param1;
               if(this.var_1449 > int(this.var_442["time_display"]) && !this.var_1784)
               {
                  this.startFadeOut();
               }
               break;
            case const_985:
               this.var_1149 += param1;
               _loc3_ = 1 - Number(this.var_1149) / Number(this.var_442["time_fade_out"]);
               this.adjustBlend(_loc3_);
               if(this.var_1149 > int(this.var_442["time_fade_in"]))
               {
                  this.startIdling();
               }
         }
      }
      
      public function dispose() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_226 != null)
         {
            this.var_226.dispose();
            this.var_226 = null;
         }
      }
      
      private function setNotificationText(param1:String) : void
      {
         var _loc2_:ITextWindow = IWindowContainer(this._window).findChildByTag("notification_text") as ITextWindow;
         if(_loc2_ == null || param1 == null)
         {
            return;
         }
         this._window.height = 0;
         _loc2_.text = param1;
         _loc2_.height = _loc2_.textHeight + this.var_1783;
         if(this._window.height < this.var_1782)
         {
            this._window.height = this.var_1782;
         }
      }
      
      private function setNotificationIcon(param1:BitmapData) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:IBitmapWrapperWindow = IWindowContainer(this._window).findChildByTag("notification_icon") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            _loc2_.bitmap = null;
            return;
         }
         if(param1.width < _loc2_.width && param1.height < _loc2_.height)
         {
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc5_ = (_loc2_.width - param1.width) / 2;
            _loc6_ = (_loc2_.height - param1.height) / 2;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc5_,_loc6_));
         }
         else if(param1.width < param1.height)
         {
            _loc3_ = new BitmapData(param1.height,param1.height,true,0);
            _loc4_ = (param1.height - param1.width) / 2;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc4_,0));
         }
         else if(param1.width > param1.height)
         {
            _loc3_ = new BitmapData(param1.width,param1.width,true,0);
            _loc4_ = (param1.width - param1.height) / 2;
            _loc3_.copyPixels(param1,param1.rect,new Point(0,_loc4_));
         }
         else
         {
            _loc3_ = new BitmapData(param1.width,param1.height);
            _loc3_.copyPixels(param1,param1.rect,new Point(0,0));
         }
         _loc2_.bitmap = _loc3_;
      }
      
      private function startFadeIn() : void
      {
         this.var_1150 = 0;
         this._state = const_508;
         this._window.visible = true;
      }
      
      private function startFadeOut() : void
      {
         this.var_1149 = 0;
         this._state = const_985;
      }
      
      private function startDisplay() : void
      {
         this.var_1449 = 0;
         this._state = const_986;
      }
      
      private function startIdling() : void
      {
         this._state = name_3;
         this._window.visible = false;
      }
      
      public function reposition(param1:int = -1) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(this.var_187 == null)
         {
            return;
         }
         var _loc2_:IDesktopWindow = this._window.context.getDesktopWindow();
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 != -1)
         {
            this.var_764 = param1;
         }
         var _loc3_:int = this.var_187.orientation == "TOP" ? int(const_430) : 0;
         var _loc4_:int = this.var_187.orientation == "BOTTOM" ? int(_loc2_.height - const_430) : int(_loc2_.height);
         var _loc5_:int = this.var_187.orientation == "LEFT" ? int(const_430) : 0;
         var _loc6_:int = this.var_187.orientation == "RIGHT" ? int(_loc2_.width - const_430) : int(_loc2_.width);
         if(this.var_442["position_horizontal_follow_toolbar"] == "HabboUserDefinedRoomEventsCom_move_vrt_png" && (this.var_187.orientation != "TOP" && this.var_187.orientation != "BOTTOM"))
         {
            if(this.var_187.orientation == "LEFT")
            {
               this._window.x = _loc5_ + const_468;
            }
            else
            {
               this._window.x = _loc6_ - this._window.width - const_468;
            }
         }
         else if(this.var_442["position_horizontal"] == "left")
         {
            this._window.x = _loc5_ + const_468;
         }
         else
         {
            this._window.x = _loc6_ - this._window.width - const_468;
         }
         if(this.var_442["position_vertical_follow_toolbar"] == "HabboUserDefinedRoomEventsCom_move_vrt_png" && (this.var_187.orientation != "RIGHT" && this.var_187.orientation != "LEFT"))
         {
            if(this.var_187.orientation == "TOP")
            {
               this._window.y = _loc3_ + this.var_764;
            }
            else
            {
               this._window.y = _loc4_ - this._window.height - this.var_764;
            }
         }
         else if(this.var_442["position_vertical"] == "top")
         {
            this._window.y = _loc3_ + this.var_764;
         }
         else
         {
            this._window.y = _loc4_ - this._window.height - this.var_764;
         }
      }
      
      public function onWindowEvent(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.var_1784 = true;
            Logger.log("notifications - hover on");
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            this.var_1784 = false;
            Logger.log("notifications - hover off");
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(this.var_226 != null)
            {
               this.var_226.ExecuteUiLinks();
            }
         }
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         this.reposition();
      }
      
      private function adjustBlend(param1:Number) : void
      {
         this.var_765 = param1;
         if(this.var_765 > 1)
         {
            this.var_765 = 1;
         }
         if(this.var_765 < 0)
         {
            this.var_765 = 0;
         }
         this._window.blend = this.var_765;
      }
   }
}
