package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1090:int = 1;
      
      public static const const_553:int = 2;
      
      private static const const_1023:int = 5;
      
      private static const const_1448:int = 250;
      
      private static const const_1445:int = 100;
      
      private static const const_1446:int = 180;
      
      private static const const_1447:int = 200;
       
      
      private var var_399:Timer;
      
      private var var_400:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_82:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_2045:int = 2;
      
      private var var_845:BitmapData;
      
      private var var_1042:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_399 = new Timer(const_1448,1);
         this.var_400 = new Timer(const_1445,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_82 = param1;
         this.var_82.visible = false;
         this._assets = param2;
         this.var_399.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_400.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_1042 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_845 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_399 != null)
         {
            this.var_399.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_399.stop();
            this.var_399 = null;
         }
         if(this.var_400 != null)
         {
            this.var_400.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_400.stop();
            this.var_400 = null;
         }
         this._assets = null;
         this.var_82 = null;
         this._parent = null;
         this.var_845 = null;
         this.var_1042 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_82 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_82);
         }
         this._parent = param1;
         this.var_2045 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_82.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_82.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1446,param3.width),Math.min(const_1447,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_82.width - _loc6_.width) / 2;
            this.var_82.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_400.reset();
         this.var_399.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_82.visible = true;
         this._parent.addChild(this.var_82);
         this.refreshArrow(this.var_2045);
         switch(this.var_2045)
         {
            case const_1090:
               this.var_82.x = -1 * this.var_82.width - const_1023;
               break;
            case const_553:
               this.var_82.x = this._parent.width + const_1023;
         }
         this.var_82.y = (this._parent.height - this.var_82.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_82.visible = false;
         this.var_400.reset();
         this.var_399.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_82);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_400.reset();
         this.var_399.reset();
         this.var_399.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_400.reset();
         this.var_399.reset();
         this.var_400.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_82 == null || this.var_82.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_82.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1090:
               _loc2_.bitmap = this.var_1042.clone();
               _loc2_.width = this.var_1042.width;
               _loc2_.height = this.var_1042.height;
               _loc2_.y = (this.var_82.height - this.var_1042.height) / 2;
               _loc2_.x = this.var_82.width - 1;
               break;
            case const_553:
               _loc2_.bitmap = this.var_845.clone();
               _loc2_.width = this.var_845.width;
               _loc2_.height = this.var_845.height;
               _loc2_.y = (this.var_82.height - this.var_845.height) / 2;
               _loc2_.x = -1 * this.var_845.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
