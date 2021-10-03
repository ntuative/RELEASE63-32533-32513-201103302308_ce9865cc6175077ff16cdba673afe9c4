package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1648:int;
      
      private var var_2562:int;
      
      private var var_711:int;
      
      private var var_490:Number;
      
      private var var_2561:Boolean;
      
      private var var_2563:int;
      
      private var var_1824:int;
      
      private var var_1823:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return this.var_1823;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2562 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2563 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2561 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_711;
         if(this.var_711 == 1)
         {
            this.var_490 = param1;
            this.var_1648 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_711);
            this.var_490 = this.var_490 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2561 && param3 - this.var_1648 >= this.var_2562 && this.var_1824 < this.var_2563)
         {
            this.var_1823 = Math.round(1000 / this.var_490);
            param2.track("performance","averageFramerate",this.var_1823);
            ++this.var_1824;
            this.var_1648 = param3;
            this.var_711 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
