package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_154:Number;
      
      private var var_153:Number;
      
      private var var_1711:Number;
      
      private var var_1712:Number;
      
      private var var_1710:Number;
      
      private var var_1111:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_499:int = 0;
      
      private var var_912:int;
      
      private var var_2353:Boolean = false;
      
      private var var_1713:Boolean = false;
      
      private var var_1536:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1713;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_499;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_154 = param2;
         this.var_153 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1711 = this._x - this._direction.x * param6;
         this.var_1712 = this.var_154 - this._direction.y * param6;
         this.var_1710 = this.var_153 - this._direction.z * param6;
         this.var_499 = 0;
         this.var_1111 = false;
         this.var_912 = param7;
         this.var_2353 = param8;
         this._frames = param9;
         this.var_1713 = param10;
         this._alphaMultiplier = 1;
         this.var_1536 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_499;
         if(this.var_499 == this.var_912)
         {
            this.ignite();
         }
         if(this.var_1713)
         {
            if(this.var_499 / this.var_912 > this.var_1536)
            {
               this._alphaMultiplier = (this.var_912 - this.var_499) / (this.var_912 * (1 - this.var_1536));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_499 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2353;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_499 <= this.var_912;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function get z() : Number
      {
         return this.var_153;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_154 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_153 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1711;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1111 = true;
         this.var_1711 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1712;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1111 = true;
         this.var_1712 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1710;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1111 = true;
         this.var_1710 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1111;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_154,this.var_153].toString();
      }
   }
}
