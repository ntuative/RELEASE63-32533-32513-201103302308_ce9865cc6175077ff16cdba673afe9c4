package com.sulake.habbo.avatar.actions
{
   import com.sulake.core.utils.Map;
   import flash.utils.Dictionary;
   
   public class ActionDefinition implements IActionDefinition
   {
       
      
      private var _id:String;
      
      private var _state:String;
      
      private var var_2510:int;
      
      private var var_2505:String;
      
      private var var_2512:String;
      
      private var var_2509:String;
      
      private var var_798:String;
      
      private var var_2507:Boolean = false;
      
      private var var_2511:Boolean = false;
      
      private var var_2508:Boolean = false;
      
      private var _prevents:Array;
      
      private var _preventHeadTurn:Boolean;
      
      private var var_771:Map;
      
      private var var_135:Dictionary;
      
      private var var_1625:Dictionary;
      
      private var var_2506:String = "";
      
      public function ActionDefinition(param1:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         this._prevents = new Array();
         this.var_135 = new Dictionary();
         this.var_1625 = new Dictionary();
         super();
         this._id = String(param1.@id);
         this._state = String(param1.@state);
         this.var_2510 = parseInt(param1.@precedence);
         this.var_2505 = String(param1.@activepartset);
         this.var_2512 = String(param1.@assetpartdefinition);
         this.var_2509 = String(param1.@lay);
         this.var_798 = String(param1.@geometrytype);
         this.var_2507 = Boolean(parseInt(param1.@main));
         this.var_2511 = Boolean(parseInt(param1.@SetActivatedBadgesComposer));
         this.var_2508 = Boolean(parseInt(param1.@animation));
         this._preventHeadTurn = Boolean(String(param1.@preventheadturn == "HabboUserDefinedRoomEventsCom_move_vrt_png"));
         var _loc2_:String = String(param1.@prevents);
         if(_loc2_ != "")
         {
            this._prevents = _loc2_.split(",");
         }
         for each(_loc3_ in param1.param)
         {
            _loc5_ = String(_loc3_.@id);
            _loc6_ = String(_loc3_.@value);
            if(_loc5_ == "SetActivatedBadgesComposer")
            {
               this.var_2506 = _loc6_;
            }
            else
            {
               this.var_1625[_loc5_] = _loc6_;
            }
         }
         for each(_loc4_ in param1.type)
         {
            _loc7_ = String(_loc4_.@id);
            this.var_135[_loc7_] = new ActionType(_loc4_);
         }
      }
      
      public function setOffsets(param1:String, param2:int, param3:Array) : void
      {
         if(this.var_771 == null)
         {
            this.var_771 = new Map();
         }
         if(this.var_771.getValue(param1) == null)
         {
            this.var_771.add(param1,new Map());
         }
         var _loc4_:Map = this.var_771.getValue(param1);
         _loc4_.add(param2,param3);
      }
      
      public function getOffsets(param1:String, param2:int) : Array
      {
         if(this.var_771 == null)
         {
            return null;
         }
         var _loc3_:Map = this.var_771.getValue(param1) as Map;
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_.getValue(param2) as Array;
      }
      
      public function getParameterValue(param1:String) : String
      {
         if(param1 == "")
         {
            return "";
         }
         var _loc2_:String = this.var_1625[param1];
         if(_loc2_ == null)
         {
            _loc2_ = this.var_2506;
         }
         return _loc2_;
      }
      
      private function getTypePrevents(param1:String) : Array
      {
         if(param1 == "")
         {
            return [];
         }
         var _loc2_:ActionType = this.var_135[param1];
         if(_loc2_ != null)
         {
            return _loc2_.prevents;
         }
         return [];
      }
      
      public function toString() : String
      {
         return "[ActionDefinition]\nid:           " + this.id + "\n" + "state:        " + this.state + "\n" + "main:         " + this.isMain + "\n" + "SetActivatedBadgesComposer:      " + this.isDefault + "\n" + "geometry:     " + this.state + "\n" + "precedence:   " + this.precedence + "\n" + "activepartset:" + this.activePartSet + "\n" + "activepartdef:" + this.assetPartDefinition + "";
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get precedence() : int
      {
         return this.var_2510;
      }
      
      public function get activePartSet() : String
      {
         return this.var_2505;
      }
      
      public function get isMain() : Boolean
      {
         return this.var_2507;
      }
      
      public function get isDefault() : Boolean
      {
         return this.var_2511;
      }
      
      public function get assetPartDefinition() : String
      {
         return this.var_2512;
      }
      
      public function get lay() : String
      {
         return this.var_2509;
      }
      
      public function get geometryType() : String
      {
         return this.var_798;
      }
      
      public function get isAnimation() : Boolean
      {
         return this.var_2508;
      }
      
      public function getPrevents(param1:String = "") : Array
      {
         return this._prevents.concat(this.getTypePrevents(param1));
      }
      
      public function getPreventHeadTurn(param1:String = "") : Boolean
      {
         if(param1 == "")
         {
            return this._preventHeadTurn;
         }
         var _loc2_:ActionType = this.var_135[param1];
         if(_loc2_ != null)
         {
            return _loc2_.preventHeadTurn;
         }
         return this._preventHeadTurn;
      }
      
      public function isAnimated(param1:String) : Boolean
      {
         if(param1 == "")
         {
            return true;
         }
         var _loc2_:ActionType = this.var_135[param1];
         if(_loc2_ != null)
         {
            return _loc2_.isAnimated;
         }
         return true;
      }
   }
}
