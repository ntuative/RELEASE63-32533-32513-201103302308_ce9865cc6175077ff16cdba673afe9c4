package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2430:String;
      
      private var var_2410:int;
      
      private var var_2405:int;
      
      private var var_2641:String;
      
      private var var_2796:int;
      
      private var var_1646:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2430 = param1.readString();
         this.var_2410 = param1.readInteger();
         this.var_2405 = param1.readInteger();
         this.var_2641 = param1.readString();
         this.var_2796 = param1.readInteger();
         this.var_1646 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2430;
      }
      
      public function get unitPort() : int
      {
         return this.var_2410;
      }
      
      public function get worldId() : int
      {
         return this.var_2405;
      }
      
      public function get castLibs() : String
      {
         return this.var_2641;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2796;
      }
      
      public function get nodeId() : int
      {
         return this.var_1646;
      }
   }
}
