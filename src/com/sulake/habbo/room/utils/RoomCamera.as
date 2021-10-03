package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_949:int = 3;
       
      
      private var var_2160:int = -1;
      
      private var var_2164:int = -2;
      
      private var var_342:Vector3d = null;
      
      private var var_409:Vector3d = null;
      
      private var var_1609:Vector3d;
      
      private var var_2167:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2161:Boolean = false;
      
      private var var_2166:Boolean = false;
      
      private var var_2162:int = 0;
      
      private var var_2163:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2168:int = 0;
      
      private var var_2165:int = 0;
      
      private var var_1658:int = -1;
      
      private var var_1340:int = 0;
      
      public function RoomCamera()
      {
         this.var_1609 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_409;
      }
      
      public function get targetId() : int
      {
         return this.var_2160;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2164;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1609;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2167;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2161;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2166;
      }
      
      public function get screenWd() : int
      {
         return this.var_2162;
      }
      
      public function get screenHt() : int
      {
         return this.var_2163;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2168;
      }
      
      public function get roomHt() : int
      {
         return this.var_2165;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1658;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2160 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1609.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2167 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2161 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2166 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2162 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2163 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2168 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2165 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1658 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_342 == null)
         {
            this.var_342 = new Vector3d();
         }
         if(this.var_342.x != param1.x || this.var_342.y != param1.y || this.var_342.z != param1.z)
         {
            this.var_342.assign(param1);
            this.var_1340 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_342 = null;
         this.var_409 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_409 != null)
         {
            return;
         }
         this.var_409 = new Vector3d();
         this.var_409.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_342 != null && this.var_409 != null)
         {
            ++this.var_1340;
            _loc4_ = Vector3d.dif(this.var_342,this.var_409);
            if(_loc4_.length <= param2)
            {
               this.var_409 = this.var_342;
               this.var_342 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_949 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1340 <= const_949)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_409 = Vector3d.sum(this.var_409,_loc4_);
            }
         }
      }
   }
}
