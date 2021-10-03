package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.events.WindowNotifyEvent;
   import com.sulake.core.window.events.WindowTouchEvent;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.core.window.utils.tablet.ITouchAwareWindow;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class DropMenuController extends InteractiveController implements IDropMenuWindow, ITouchAwareWindow
   {
      
      protected static const const_422:String = "_DROPMENU_TITLETEXT";
      
      protected static const ITEMLIST_NAME:String = "_DROPMENU_ITEMLIST";
       
      
      private var var_271:Array;
      
      private var var_656:int = -1;
      
      private var var_989:Boolean = false;
      
      private var var_188:DropMenuController;
      
      public function DropMenuController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         this.var_271 = new Array();
         param4 |= 0;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get selection() : int
      {
         return this.var_656;
      }
      
      public function set selection(param1:int) : void
      {
         if(param1 > this.var_271.lenght - 1)
         {
            throw new Error("Menu selection index out of range!");
         }
         var _loc2_:WindowNotifyEvent = WindowNotifyEvent.allocate(WindowNotifyEvent.const_547,this,null,true);
         this.update(this,_loc2_);
         if(!_loc2_.isWindowOperationPrevented())
         {
            _loc2_.recycle();
            this.var_656 = param1;
            this.closeMenuView();
            _loc2_ = WindowNotifyEvent.allocate(WindowNotifyEvent.const_408,this,null);
            this.update(this,_loc2_);
         }
         _loc2_.recycle();
      }
      
      override public function set caption(param1:String) : void
      {
         super.caption = param1;
         this.getTitleLabel().text = param1;
      }
      
      override public function dispose() : void
      {
         if(this.var_188 != null && !this.var_188.disposed)
         {
            this.var_188.destroy();
            this.var_188 = null;
         }
         super.dispose();
      }
      
      override public function activate() : Boolean
      {
         if(this.var_989)
         {
            return true;
         }
         return super.activate();
      }
      
      private function getTitleLabel() : ILabelWindow
      {
         return getChildByName(DropMenuController.const_422) as ILabelWindow;
      }
      
      private function getSubMenu() : DropMenuController
      {
         var _loc1_:Rectangle = new Rectangle();
         getGlobalRectangle(_loc1_);
         if(this.var_188 == null || this.var_188.disposed)
         {
            this.var_188 = context.create(name + "::submenu","",WindowType.const_452,var_83,0 | 0,_loc1_,this.subMenuEventProc,null,0,null,[WindowController.TAG_EXCLUDE]) as DropMenuController;
         }
         else
         {
            this.var_188.setGlobalRectangle(_loc1_);
         }
         this.var_188.activate();
         return this.var_188;
      }
      
      override public function populate(param1:Array) : void
      {
         this.var_656 = -1;
         while(this.var_271.length > 0)
         {
            this.var_271.pop();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.var_271.push(param1[_loc2_]);
            _loc2_++;
         }
         this.var_989 = true;
         this.closeMenuView();
      }
      
      public function getMenuItemIndex(param1:IDropMenuItemWindow) : int
      {
         var _loc2_:int = -1;
         var _loc3_:IItemListWindow = getChildByName(DropMenuController.ITEMLIST_NAME) as IItemListWindow;
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.getListItemIndex(param1);
         }
         if(_loc2_ == -1)
         {
            if(this.var_188 != null)
            {
               _loc2_ = this.var_188.getMenuItemIndex(param1);
            }
         }
         return _loc2_;
      }
      
      protected function openMenuView() : void
      {
         if(!this.var_989)
         {
            if(this.open())
            {
               if(this.var_271.length)
               {
                  this.populateMenuItemContainer(this.var_271,this.getSubMenu(),this.subMenuEventProc);
                  this.var_989 = true;
               }
            }
         }
      }
      
      protected function closeMenuView() : void
      {
         if(this.close())
         {
            if(this.var_188 != null)
            {
               this.var_188.destroy();
               this.var_188 = null;
            }
            this.var_989 = false;
            this.getTitleLabel().text = this.var_656 < this.var_271.length && this.var_656 > -1 ? this.var_271[this.var_656] : caption;
         }
      }
      
      protected function populateMenuItemContainer(param1:Array, param2:DropMenuController, param3:Function) : void
      {
         var _loc6_:* = null;
         var _loc4_:IItemListWindow = param2.getChildByName(DropMenuController.ITEMLIST_NAME) as IItemListWindow;
         _loc4_.autoArrangeItems = false;
         var _loc5_:uint = param1.length;
         var _loc7_:int = _loc4_.width;
         var _loc8_:int = _loc7_;
         var _loc9_:int = 0;
         while(_loc9_ < _loc5_)
         {
            _loc6_ = context.create(name + "::menu_item_" + _loc9_,param1[_loc9_],WindowType.const_578,var_83,0 | 0 | 0 | 0 | 0,null,param3,null,_loc9_,null,["_EXCLUDE"]) as DropMenuItemController;
            _loc8_ = Math.max(_loc8_,_loc6_.width);
            _loc6_.width = _loc7_;
            _loc4_.addListItem(_loc6_);
            _loc9_++;
         }
         if(_loc8_ > _loc7_)
         {
            param2.width += _loc8_ - _loc4_.width;
            _loc9_ = 0;
            while(_loc9_ < _loc5_)
            {
               _loc4_.getListItemAt(_loc9_).width = _loc8_;
               _loc9_++;
            }
         }
         var _loc10_:IWindow = context.create(name + "::padding","",WindowType.const_407,var_83,0 | 0 | 0 | 0,new Rectangle(0,0,1,2),null,null,0,null,["_EXCLUDE"]);
         _loc4_.addListItem(_loc10_);
         _loc4_.autoArrangeItems = true;
         this.fitToDesktop(param2);
         param2.activate();
         if(this.var_656 > -1 && _loc5_)
         {
            _loc4_.getListItemAt(this.var_656).setStateFlag(WindowState.const_56,true);
         }
      }
      
      private function fitToDesktop(param1:IWindow) : void
      {
         var _loc2_:Rectangle = new Rectangle();
         param1.getGlobalRectangle(_loc2_);
         if(_loc2_.bottom > desktop.rectangle.bottom)
         {
            param1.offset(0,desktop.rectangle.bottom - _loc2_.bottom);
         }
         else if(_loc2_.top < desktop.rectangle.top)
         {
            param1.offset(0,_loc2_.top - desktop.rectangle.top);
         }
         if(_loc2_.left < desktop.rectangle.left)
         {
            param1.offset(_loc2_.left - desktop.rectangle.left,0);
         }
         else if(_loc2_.right > desktop.rectangle.right)
         {
            param1.offset(desktop.rectangle.right - _loc2_.right,0);
         }
      }
      
      private function menuItemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = 0;
         if(param1.type == WindowMouseEvent.const_42 || param1.type == WindowTouchEvent.const_464)
         {
            if(param2 is IDropMenuItemWindow)
            {
               _loc3_ = uint(this.getMenuItemIndex(param2 as IDropMenuItemWindow));
               this.selection = _loc3_;
            }
         }
      }
      
      private function subMenuEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param1.type)
         {
            case WindowTouchEvent.const_1077:
            case WindowMouseEvent.const_58:
               if(param2 is IDropMenuItemWindow)
               {
                  if(param2.testStateFlag(WindowState.const_95))
                  {
                     this.selection = this.getMenuItemIndex(param2 as IDropMenuItemWindow);
                  }
               }
               break;
            case WindowTouchEvent.const_786:
            case WindowMouseEvent.const_42:
               if(param2 is IDropMenuItemWindow)
               {
                  this.selection = this.getMenuItemIndex(param2 as IDropMenuItemWindow);
               }
               break;
            case WindowEvent.const_487:
               if(param2 == this.var_188)
               {
                  this.closeMenuView();
               }
         }
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         switch(param2.type)
         {
            case WindowTouchEvent.const_786:
            case WindowMouseEvent.const_42:
               if(!this.var_989)
               {
                  this.openMenuView();
               }
         }
         return super.update(param1,param2);
      }
      
      public function open() : Boolean
      {
         if(getStateFlag(WindowState.const_100))
         {
            return true;
         }
         var _loc1_:WindowNotifyEvent = WindowNotifyEvent.allocate(WindowNotifyEvent.const_1216,this,null);
         this.update(this,_loc1_);
         if(_loc1_.isDefaultPrevented())
         {
            _loc1_.recycle();
            return false;
         }
         visible = true;
         _loc1_.type = WindowNotifyEvent.const_1171;
         this.update(this,_loc1_);
         _loc1_.recycle();
         return true;
      }
      
      public function close() : Boolean
      {
         if(!getStateFlag(WindowState.const_100))
         {
            return true;
         }
         var _loc1_:WindowNotifyEvent = WindowNotifyEvent.allocate(WindowNotifyEvent.const_1239,this,null);
         this.update(this,_loc1_);
         if(_loc1_.isDefaultPrevented())
         {
            _loc1_.recycle();
            return false;
         }
         visible = false;
         _loc1_.type = WindowNotifyEvent.const_1124;
         this.update(this,_loc1_);
         _loc1_.recycle();
         return true;
      }
      
      public function enumerateSelection() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:Array = new Array();
         if(!_disposed)
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_271.length)
            {
               _loc1_.push(this.var_271[_loc2_]);
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this.var_271.length)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_682,this.var_271,PropertyStruct.const_138,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1452);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         InteractiveController.readInteractiveWindowProperties(this,param1);
         for each(_loc2_ in param1)
         {
            if(_loc2_.key == PropertyDefaults.const_682)
            {
               this.populate(_loc2_.value as Array);
               break;
            }
         }
         super.properties = param1;
      }
   }
}
