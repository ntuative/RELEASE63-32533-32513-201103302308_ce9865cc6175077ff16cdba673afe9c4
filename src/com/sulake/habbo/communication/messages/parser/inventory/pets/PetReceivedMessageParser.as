package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1902:Boolean;
      
      private var var_993:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1902 = param1.readBoolean();
         this.var_993 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1902 + ", " + this.var_993.id + ", " + this.var_993.name + ", " + this.var_993.type + ", " + this.var_993.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1902;
      }
      
      public function get pet() : PetData
      {
         return this.var_993;
      }
   }
}
