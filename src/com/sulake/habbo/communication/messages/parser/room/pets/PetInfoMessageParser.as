package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1810:int;
      
      private var _name:String;
      
      private var var_1463:int;
      
      private var var_2568:int;
      
      private var var_2259:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_671:String;
      
      private var var_2570:int;
      
      private var var_2567:int;
      
      private var var_2569:int;
      
      private var var_2256:int;
      
      private var var_2323:int;
      
      private var _ownerName:String;
      
      private var var_499:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1810;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1463;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2568;
      }
      
      public function get experience() : int
      {
         return this.var_2259;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2570;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2567;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2569;
      }
      
      public function get respect() : int
      {
         return this.var_2256;
      }
      
      public function get ownerId() : int
      {
         return this.var_2323;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_499;
      }
      
      public function flush() : Boolean
      {
         this.var_1810 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1810 = param1.readInteger();
         this._name = param1.readString();
         this.var_1463 = param1.readInteger();
         this.var_2568 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         this.var_2570 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2567 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2569 = param1.readInteger();
         this.var_671 = param1.readString();
         this.var_2256 = param1.readInteger();
         this.var_2323 = param1.readInteger();
         this.var_499 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
