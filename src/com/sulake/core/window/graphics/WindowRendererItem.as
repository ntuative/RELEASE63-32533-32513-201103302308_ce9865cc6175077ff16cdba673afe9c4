package com.sulake.core.window.graphics
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.graphics.renderer.ISkinRenderer;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowRendererItem implements IDisposable
   {
      
      private static const const_611:uint = 0;
      
      private static const const_963:uint = 1;
      
      private static const const_962:uint = 2;
       
      
      private var var_104:BitmapData;
      
      private var var_156:WindowRenderer;
      
      private var var_903:ISkinContainer;
      
      private var _drawBufferAllocator:DrawBufferAllocator;
      
      private var _disposed:Boolean;
      
      private var var_596:Boolean;
      
      private var var_180:Rectangle;
      
      private var var_1055:Matrix;
      
      private var var_873:ColorTransform;
      
      private var var_1389:uint;
      
      private var var_902:uint;
      
      public function WindowRendererItem(param1:WindowRenderer, param2:DrawBufferAllocator, param3:ISkinContainer)
      {
         super();
         this._disposed = false;
         this.var_156 = param1;
         this.var_903 = param3;
         this._drawBufferAllocator = param2;
         this.var_1389 = 4294967295;
         this.var_902 = 0;
         this.var_873 = new ColorTransform();
         this.var_1055 = new Matrix();
         this.var_180 = new Rectangle();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get buffer() : BitmapData
      {
         return this.var_104;
      }
      
      public function get dirty() : Rectangle
      {
         return this.var_180;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_156 = null;
            this.var_903 = null;
            if(this.var_104 != null)
            {
               this._drawBufferAllocator.free(this.var_104);
               this.var_104 = null;
            }
         }
      }
      
      public function render(param1:IWindow, param2:Point, param3:Rectangle) : Boolean
      {
         var _loc4_:* = null;
         var _loc11_:Boolean = false;
         var _loc12_:* = 0;
         var _loc5_:uint = !!param1.background ? uint(const_962) : uint(const_611);
         var _loc6_:Boolean = this.var_180.width > 0 && this.var_180.height > 0;
         var _loc7_:ISkinRenderer = this.resolveSkinRenderer(param1);
         if(_loc7_ != null)
         {
            if(_loc7_.isStateDrawable(this.var_902))
            {
               _loc5_ = const_963;
            }
         }
         var _loc8_:int = Math.max(param1.width,1);
         var _loc9_:int = Math.max(param1.height,1);
         if(_loc5_ != const_611)
         {
            if(this.var_104 == null)
            {
               this.var_104 = this._drawBufferAllocator.allocate(_loc8_,_loc9_,true,param1.color);
               this.var_596 = true;
               _loc6_ = true;
            }
            else if(this.var_104.width != _loc8_ || this.var_104.height != _loc9_)
            {
               this._drawBufferAllocator.free(this.var_104);
               this.var_104 = this._drawBufferAllocator.allocate(_loc8_,_loc9_,true,param1.color);
               this.var_596 = true;
               _loc6_ = true;
            }
         }
         var _loc10_:IGraphicContext = IGraphicContextHost(param1).getGraphicContext(false);
         if(_loc10_)
         {
            if(!_loc10_.visible)
            {
               _loc10_.visible = true;
            }
            _loc11_ = param1.testParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING);
            _loc10_.setDrawRegion(param1.rectangle,!param1.testParamFlag(WindowParam.const_33),!!_loc11_ ? param3 : null);
            if(_loc11_)
            {
               param3 = new Rectangle(0,0,_loc8_,_loc9_);
            }
         }
         if(_loc5_ != const_611)
         {
            this.var_1389 = this.var_902;
            _loc4_ = param1.fetchDrawBuffer() as BitmapData;
            if(_loc4_ != null)
            {
               _loc4_.lock();
               if(_loc5_ == const_963)
               {
                  _loc6_ = true;
                  if(!param1.testParamFlag(WindowParam.const_33))
                  {
                     _loc4_.fillRect(param3,0);
                  }
                  if(this.var_596)
                  {
                     this.var_596 = false;
                     this.var_104.fillRect(this.var_104.rect,param1.color);
                     _loc7_.draw(param1,this.var_104,this.var_104.rect,this.var_902,false);
                     if(!param1.background)
                     {
                        _loc12_ = uint(param1.color);
                        if((_loc12_ & 16777215) < 16777215)
                        {
                           this.var_104.colorTransform(_loc4_.rect,new ColorTransform(((_loc12_ & 16711680) >> 16) / 255,((_loc12_ & 65280) >> 8) / 255,(_loc12_ & 255) / 255));
                        }
                     }
                  }
                  if(param1.blend < 1 && param1.testParamFlag(WindowParam.const_33))
                  {
                     this.var_1055.tx = param2.x;
                     this.var_1055.ty = param2.y;
                     this.var_873.alphaMultiplier = param1.blend;
                     param3.offset(param2.x,param2.y);
                     _loc4_.draw(this.var_104,this.var_1055,this.var_873,null,param3,false);
                     param3.offset(-param2.x,-param2.y);
                  }
                  else
                  {
                     _loc4_.copyPixels(this.var_104,param3,param2,null,null,true);
                  }
               }
               else if(_loc5_ == const_962)
               {
                  _loc6_ = true;
                  if(param1.testParamFlag(WindowParam.const_33))
                  {
                     this.var_104.fillRect(this.var_104.rect,param1.color);
                     _loc4_.copyPixels(this.var_104,param3,param2,null,null,true);
                  }
                  else
                  {
                     _loc4_.fillRect(new Rectangle(param2.x,param2.y,param3.width,param3.height),param1.color);
                     _loc10_.blend = param1.blend;
                  }
               }
               _loc4_.unlock();
            }
            this.var_180.left = int.MAX_VALUE;
            this.var_180.top = int.MAX_VALUE;
            this.var_180.right = int.MIN_VALUE;
            this.var_180.bottom = int.MIN_VALUE;
         }
         return true;
      }
      
      private function resolveSkinRenderer(param1:IWindow) : ISkinRenderer
      {
         var _loc2_:ISkinRenderer = this.var_903.getSkinRendererByTypeAndStyle(param1.type,param1.style);
         if(_loc2_ == null)
         {
            if(param1.style != WindowStyle.const_179)
            {
               _loc2_ = this.var_903.getSkinRendererByTypeAndStyle(param1.type,WindowStyle.const_179);
            }
         }
         return _loc2_;
      }
      
      public function testForStateChange(param1:IWindow) : Boolean
      {
         return this.var_903.getTheActualState(param1.type,param1.style,param1.state) != this.var_1389;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var _loc5_:* = null;
         var _loc4_:Boolean = false;
         switch(param3)
         {
            case WindowRedrawFlag.REDRAW:
               this.var_596 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.RESIZE:
               this.var_596 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.const_577:
               if(param1.testParamFlag(WindowParam.const_33))
               {
                  _loc4_ = true;
               }
               else
               {
                  _loc5_ = IGraphicContextHost(param1).getGraphicContext(true);
                  _loc5_.setDrawRegion(param1.rectangle,false,null);
                  if(!_loc5_.visible)
                  {
                     _loc4_ = true;
                  }
               }
               break;
            case WindowRedrawFlag.const_1263:
               this.var_902 = this.var_903.getTheActualState(param1.type,param1.style,param1.state);
               if(this.var_902 != this.var_1389)
               {
                  this.var_596 = true;
                  _loc4_ = true;
               }
               break;
            case WindowRedrawFlag.const_1225:
               if(param1.testParamFlag(WindowParam.const_33))
               {
                  this.var_596 = true;
                  _loc4_ = true;
               }
               else
               {
                  IGraphicContextHost(param1).getGraphicContext(true).blend = param1.blend;
               }
               break;
            case WindowRedrawFlag.const_1218:
               _loc4_ = true;
         }
         if(_loc4_)
         {
            this.var_180.left = Math.min(this.var_180.left,param2.left);
            this.var_180.top = Math.min(this.var_180.top,param2.top);
            this.var_180.right = Math.max(this.var_180.right,param2.right);
            this.var_180.bottom = Math.max(this.var_180.bottom,param2.bottom);
         }
         return _loc4_;
      }
      
      private function drawRect(param1:BitmapData, param2:Rectangle, param3:uint) : void
      {
         var _loc4_:int = 0;
         _loc4_ = param2.left;
         while(_loc4_ < param2.right)
         {
            param1.setPixel32(_loc4_,param2.top,param3);
            param1.setPixel32(_loc4_,param2.bottom - 1,param3);
            _loc4_++;
         }
         _loc4_ = param2.top;
         while(_loc4_ < param2.bottom)
         {
            param1.setPixel32(param2.left,_loc4_,param3);
            param1.setPixel32(param2.right - 1,_loc4_,param3);
            _loc4_++;
         }
      }
   }
}
