package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1690:int = -1;
      
      private var var_2285:int = 0;
      
      private var var_1379:Boolean = false;
      
      private var var_591:int = 0;
      
      private var _frames:Array;
      
      private var var_905:Array;
      
      private var var_904:Array;
      
      private var var_598:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_905 = [];
         this.var_904 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1379;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1379 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_591;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_591 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1690;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1690)
         {
            this.var_1690 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2285;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2285 = param1;
      }
      
      public function dispose() : void
      {
         this.recycleFrames();
         this._frames = null;
         this.var_905 = null;
         this.var_904 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_598 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         this.recycleFrames();
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_905 = [];
         this.var_904 = [];
         this.var_1379 = false;
         this.var_591 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_598)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = AnimationFrame.allocate(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_905[_loc2_] = false;
            this.var_904[_loc2_] = false;
            _loc2_++;
         }
      }
      
      private function recycleFrames() : void
      {
         var _loc1_:* = null;
         if(this._frames != null)
         {
            for each(_loc1_ in this._frames)
            {
               if(_loc1_ != null)
               {
                  _loc1_.recycle();
               }
            }
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_598)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < this.var_598)
         {
            _loc3_ = this._frames[param1];
            if(_loc3_ != null)
            {
               _loc3_.recycle();
            }
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_598)
         {
            return this.var_904[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_598)
         {
            this.var_904[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_598)
         {
            return this.var_905[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_598)
         {
            this.var_905[param1] = param2;
         }
      }
   }
}
