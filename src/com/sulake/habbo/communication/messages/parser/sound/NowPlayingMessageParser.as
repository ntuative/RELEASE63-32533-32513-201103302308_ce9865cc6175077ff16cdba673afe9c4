package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1998:int;
      
      private var _currentPosition:int;
      
      private var var_1997:int;
      
      private var var_2000:int;
      
      private var var_1999:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1998;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1997;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2000;
      }
      
      public function get syncCount() : int
      {
         return this.var_1999;
      }
      
      public function flush() : Boolean
      {
         this.var_1998 = -1;
         this._currentPosition = -1;
         this.var_1997 = -1;
         this.var_2000 = -1;
         this.var_1999 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1998 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1997 = param1.readInteger();
         this.var_2000 = param1.readInteger();
         this.var_1999 = param1.readInteger();
         return true;
      }
   }
}
