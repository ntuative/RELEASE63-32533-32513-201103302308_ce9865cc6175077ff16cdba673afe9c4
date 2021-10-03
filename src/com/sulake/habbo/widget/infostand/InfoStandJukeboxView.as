package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IBorderWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.sound.events.NowPlayingEvent;
   import com.sulake.habbo.tracking.HabboTracking;
   import com.sulake.habbo.tracking.IHabboTracking;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniActionMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class InfoStandJukeboxView
   {
       
      
      private var _widget:InfostandWidget;
      
      private var _window:IItemListWindow;
      
      private var var_199:IBorderWindow;
      
      private var var_67:IItemListWindow;
      
      private var var_53:IItemListWindow;
      
      private var _catalog:IHabboCatalog;
      
      private var _habboTracking:IHabboTracking;
      
      private var var_504:IHabboSoundManager;
      
      private var var_995:IWindow;
      
      public function InfoStandJukeboxView(param1:InfostandWidget, param2:String, param3:IHabboCatalog, param4:IHabboSoundManager)
      {
         super();
         this._widget = param1;
         this._catalog = param3;
         this._habboTracking = HabboTracking.getInstance();
         this.var_504 = param4;
         this.var_504.events.addEventListener(NowPlayingEvent.const_658,this.onNowPlayingChanged);
         this.createWindow(param2);
      }
      
      public function dispose() : void
      {
         this._catalog = null;
         this._widget = null;
         if(this.var_504)
         {
            this.var_504.events.removeEventListener(NowPlayingEvent.const_658,this.onNowPlayingChanged);
         }
         this._window.dispose();
         this._window = null;
      }
      
      public function get window() : IItemListWindow
      {
         return this._window;
      }
      
      private function createWindow(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc2_:XmlAsset = this._widget.assets.getAssetByName("jukebox_view") as XmlAsset;
         this._window = this._widget.windowManager.buildFromXML(_loc2_.content as XML) as IItemListWindow;
         if(this._window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this.var_199 = this._window.getListItemByName("info_border") as IBorderWindow;
         this.var_67 = this._window.getListItemByName("button_list") as IItemListWindow;
         if(this.var_199 != null)
         {
            this.var_53 = this.var_199.findChildByName("infostand_element_list") as IItemListWindow;
         }
         this._window.name = param1;
         this._widget.mainContainer.addChild(this._window);
         var _loc3_:IWindow = this.var_199.findChildByTag("close");
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
         }
         if(this.var_67 != null)
         {
            _loc5_ = 0;
            while(_loc5_ < this.var_67.numListItems)
            {
               _loc4_ = this.var_67.getListItemAt(_loc5_);
               _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClicked);
               _loc5_++;
            }
         }
         this.var_995 = this.var_199.findChildByTag("catalog");
         if(this.var_995 != null)
         {
            this.var_995.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCatalogButtonClicked);
         }
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         this._widget.close();
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:ITextWindow = this.var_53.getListItemByName("name_text") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.text = param1;
         _loc2_.visible = true;
         _loc2_.height = _loc2_.textHeight + 5;
         this.updateWindow();
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this.var_53.getListItemByName("image") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:BitmapData = new BitmapData(_loc2_.width,param1.height,true,0);
         var _loc4_:Point = new Point((_loc2_.width - param1.width) / 2,0);
         _loc3_.copyPixels(param1,param1.rect,_loc4_);
         _loc2_.height = param1.height;
         _loc2_.bitmap = _loc3_;
         _loc2_.invalidate();
         this.updateWindow();
      }
      
      private function set expiration(param1:int) : void
      {
         var _loc2_:ITextWindow = this.var_53.getListItemByName("expiration_text") as ITextWindow;
         var _loc3_:IWindowContainer = this.var_53.getListItemByName("expiration_spacer") as IWindowContainer;
         if(_loc2_ == null || _loc3_ == null)
         {
            return;
         }
         this._widget.localizations.registerParameter("infostand.rent.expiration","minutes",param1.toString());
         if(param1 <= 0)
         {
            _loc2_.height = 0;
            _loc3_.height = 0;
         }
         else
         {
            _loc2_.height = _loc2_.textHeight + 5;
            _loc3_.height = 1;
         }
         this.updateWindow();
      }
      
      private function set nowPlayingTrackName(param1:String) : void
      {
         var _loc2_:ITextWindow = this.var_53.getListItemByName("track_name_text") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.text = param1;
         _loc2_.visible = true;
         _loc2_.height = _loc2_.textHeight + 5;
         this.updateWindow();
      }
      
      private function set nowPlayingAuthorName(param1:String) : void
      {
         var _loc2_:ITextWindow = this.var_53.getListItemByName("track_creator_text") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.text = param1;
         _loc2_.visible = true;
         _loc2_.height = _loc2_.textHeight + 5;
         this.updateWindow();
      }
      
      private function onButtonClicked(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:IWindow = param1.target as IWindow;
         switch(_loc4_.name)
         {
            case "rotate":
               _loc3_ = "null";
               break;
            case "move":
               _loc3_ = "null";
               break;
            case "pickup":
               _loc3_ = "null";
               this._widget.close();
         }
         if(_loc3_ != null)
         {
            _loc5_ = this._widget.furniData.id;
            _loc6_ = this._widget.furniData.category;
            _loc2_ = new RoomWidgetFurniActionMessage(_loc3_,_loc5_,_loc6_);
            this._widget.messageListener.processWidgetMessage(_loc2_);
         }
      }
      
      private function onCatalogButtonClicked(param1:WindowMouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this._catalog)
         {
            _loc2_ = this._widget.furniData.catalogPageId;
            _loc3_ = this._widget.furniData.offerId;
            if(_loc2_ > -1)
            {
               this._catalog.openCatalogPageById(_loc2_,_loc3_);
               if(this._habboTracking && !this._habboTracking.disposed)
               {
                  this._habboTracking.track("infostandCatalogButton","offer",_loc3_);
               }
            }
         }
      }
      
      private function updateWindow() : void
      {
         if(this.var_53 == null || this.var_199 == null || this.var_67 == null)
         {
            return;
         }
         this.var_67.width = this.var_67.scrollableRegion.width;
         this.var_53.height = this.var_53.scrollableRegion.height;
         this.var_199.height = this.var_53.height + 20;
         this._window.width = Math.max(this.var_199.width,this.var_67.width);
         this._window.height = this._window.scrollableRegion.height;
         if(this.var_199.width < this.var_67.width)
         {
            this.var_199.x = this._window.width - this.var_199.width;
            this.var_67.x = 0;
         }
         else
         {
            this.var_67.x = this._window.width - this.var_67.width;
            this.var_199.x = 0;
         }
         this._widget.refreshContainer();
      }
      
      public function update(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         this.name = param1.name;
         this.image = param1.image;
         this.expiration = param1.expiration;
         var _loc2_:IPlayListController = this.var_504.musicController.getRoomItemPlaylist();
         if(_loc2_ == null)
         {
            this.nowPlayingTrackName = "";
            this.nowPlayingAuthorName = "";
         }
         else
         {
            _loc6_ = _loc2_.nowPlayingSongId;
            if(_loc6_ != -1)
            {
               _loc7_ = this.var_504.musicController.getSongInfo(_loc6_);
               if(_loc7_ != null)
               {
                  this.nowPlayingTrackName = _loc7_.name;
                  this.nowPlayingAuthorName = _loc7_.creator;
               }
            }
            else
            {
               this.nowPlayingTrackName = "";
               this.nowPlayingAuthorName = "";
            }
         }
         var _loc3_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:Boolean = false;
         if(param1.isRoomController)
         {
            _loc3_ = true;
            _loc4_ = true;
         }
         if(param1.isRoomOwner || param1.isAnyRoomController)
         {
            _loc3_ = true;
            _loc4_ = true;
            _loc5_ = true;
         }
         if(_loc4_)
         {
            _loc4_ = !param1.isWallItem;
         }
         if(param1.isStickie)
         {
            _loc3_ = false;
            _loc5_ = false;
         }
         this.showButton("move",_loc3_);
         this.showButton("rotate",_loc4_);
         this.showButton("pickup",_loc5_);
         if(param1.catalogPageId < 0)
         {
            this.showCatalogButton(false);
         }
         else
         {
            this.showCatalogButton(true);
         }
         this.var_67.visible = _loc3_ || _loc4_ || _loc5_;
         this.updateWindow();
      }
      
      private function showButton(param1:String, param2:Boolean) : void
      {
         if(this.var_67 == null)
         {
            return;
         }
         var _loc3_:IWindow = this.var_67.getListItemByName(param1);
         if(_loc3_ != null)
         {
            _loc3_.visible = param2;
            this.var_67.arrangeListItems();
         }
      }
      
      private function showCatalogButton(param1:Boolean) : void
      {
         if(param1)
         {
            if(!this.var_53.getListItemByName("catalog_button"))
            {
               this.var_53.addListItem(this.var_995);
            }
            this.var_995.visible = param1;
         }
         else
         {
            this.var_53.removeListItem(this.var_995);
         }
      }
      
      private function onNowPlayingChanged(param1:NowPlayingEvent) : void
      {
         var _loc2_:* = null;
         if(this._widget.mainContainer.visible && this._window.visible)
         {
            if(param1.id != -1)
            {
               _loc2_ = this.var_504.musicController.getSongInfo(param1.id);
               if(_loc2_ != null)
               {
                  this.nowPlayingTrackName = _loc2_.name;
                  this.nowPlayingAuthorName = _loc2_.creator;
                  return;
               }
               this.nowPlayingTrackName = "";
               this.nowPlayingAuthorName = "";
            }
         }
      }
   }
}
