package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2392:int = 0;
      
      private var var_1363:String = "";
      
      private var var_1647:String = "";
      
      private var var_2221:String = "";
      
      private var var_2393:String = "";
      
      private var var_1728:int = 0;
      
      private var var_2389:int = 0;
      
      private var var_2391:int = 0;
      
      private var var_1365:int = 0;
      
      private var var_2390:int = 0;
      
      private var var_1366:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2392 = param1;
         this.var_1363 = param2;
         this.var_1647 = param3;
         this.var_2221 = param4;
         this.var_2393 = param5;
         if(param6)
         {
            this.var_1728 = 1;
         }
         else
         {
            this.var_1728 = 0;
         }
         this.var_2389 = param7;
         this.var_2391 = param8;
         this.var_1365 = param9;
         this.var_2390 = param10;
         this.var_1366 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2392,this.var_1363,this.var_1647,this.var_2221,this.var_2393,this.var_1728,this.var_2389,this.var_2391,this.var_1365,this.var_2390,this.var_1366];
      }
   }
}
