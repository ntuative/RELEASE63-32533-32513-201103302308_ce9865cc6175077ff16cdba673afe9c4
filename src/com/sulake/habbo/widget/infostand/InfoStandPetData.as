package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1463:int;
      
      private var var_2321:int;
      
      private var var_2259:int;
      
      private var var_2320:int;
      
      private var _energy:int;
      
      private var var_2322:int;
      
      private var _nutrition:int;
      
      private var var_2325:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1810:int = -1;
      
      private var _type:int;
      
      private var var_2571:int;
      
      private var var_45:BitmapData;
      
      private var var_2324:Boolean;
      
      private var var_2323:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2219:int;
      
      private var var_499:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1810;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2571;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2324;
      }
      
      public function get ownerId() : int
      {
         return this.var_2323;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_499;
      }
      
      public function get level() : int
      {
         return this.var_1463;
      }
      
      public function get levelMax() : int
      {
         return this.var_2321;
      }
      
      public function get experience() : int
      {
         return this.var_2259;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2320;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2322;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2325;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2219;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1810 = param1.id;
         this._type = param1.petType;
         this.var_2571 = param1.petRace;
         this.var_45 = param1.image;
         this.var_2324 = param1.isOwnPet;
         this.var_2323 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1463 = param1.level;
         this.var_2321 = param1.levelMax;
         this.var_2259 = param1.experience;
         this.var_2320 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2322 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2325 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2219 = param1.roomIndex;
         this.var_499 = param1.age;
      }
   }
}
