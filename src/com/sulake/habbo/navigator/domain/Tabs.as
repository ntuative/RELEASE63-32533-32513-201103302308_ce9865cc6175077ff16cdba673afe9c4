package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_418:int = 1;
      
      public static const const_275:int = 2;
      
      public static const const_320:int = 3;
      
      public static const const_358:int = 4;
      
      public static const const_270:int = 5;
      
      public static const const_404:int = 1;
      
      public static const const_881:int = 2;
      
      public static const const_883:int = 3;
      
      public static const const_849:int = 4;
      
      public static const const_226:int = 5;
      
      public static const const_679:int = 6;
      
      public static const const_737:int = 7;
      
      public static const const_266:int = 8;
      
      public static const const_405:int = 9;
      
      public static const const_1996:int = 10;
      
      public static const const_726:int = 11;
      
      public static const const_480:int = 12;
       
      
      private var var_436:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_436 = new Array();
         this.var_436.push(new Tab(this._navigator,const_418,const_480,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_502));
         this.var_436.push(new Tab(this._navigator,const_275,const_404,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_502));
         this.var_436.push(new Tab(this._navigator,const_358,const_726,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1139));
         this.var_436.push(new Tab(this._navigator,const_320,const_226,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_502));
         this.var_436.push(new Tab(this._navigator,const_270,const_266,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_854));
         this.setSelectedTab(const_418);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_358;
      }
      
      public function get tabs() : Array
      {
         return this.var_436;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_436)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_436)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_436)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
