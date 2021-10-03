package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_186;
         param1["bound_to_parent_rect"] = const_98;
         param1["child_window"] = const_1051;
         param1["embedded_controller"] = const_1028;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_879;
         param1["mouse_dragging_target"] = const_245;
         param1["mouse_dragging_trigger"] = const_365;
         param1["mouse_scaling_target"] = const_282;
         param1["mouse_scaling_trigger"] = const_438;
         param1["horizontal_mouse_scaling_trigger"] = const_260;
         param1["vertical_mouse_scaling_trigger"] = const_268;
         param1["observe_parent_input_events"] = const_1268;
         param1["optimize_region_to_layout_size"] = const_580;
         param1["parent_window"] = const_1158;
         param1["relative_horizontal_scale_center"] = const_177;
         param1["relative_horizontal_scale_fixed"] = const_150;
         param1["relative_horizontal_scale_move"] = const_420;
         param1["relative_horizontal_scale_strech"] = const_377;
         param1["relative_scale_center"] = const_1107;
         param1["relative_scale_fixed"] = const_799;
         param1["relative_scale_move"] = const_1251;
         param1["relative_scale_strech"] = const_1097;
         param1["relative_vertical_scale_center"] = const_208;
         param1["relative_vertical_scale_fixed"] = const_148;
         param1["relative_vertical_scale_move"] = const_255;
         param1["relative_vertical_scale_strech"] = const_286;
         param1["on_resize_align_left"] = const_932;
         param1["on_resize_align_right"] = const_600;
         param1["on_resize_align_center"] = const_571;
         param1["on_resize_align_top"] = const_664;
         param1["on_resize_align_bottom"] = const_558;
         param1["on_resize_align_middle"] = const_489;
         param1["on_accommodate_align_left"] = const_1227;
         param1["on_accommodate_align_right"] = const_593;
         param1["on_accommodate_align_center"] = const_909;
         param1["on_accommodate_align_top"] = const_1200;
         param1["on_accommodate_align_bottom"] = const_494;
         param1["on_accommodate_align_middle"] = const_691;
         param1["route_input_events_to_parent"] = const_543;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1177;
         param1["scalable_with_mouse"] = const_1058;
         param1["reflect_horizontal_resize_to_parent"] = const_455;
         param1["reflect_vertical_resize_to_parent"] = const_511;
         param1["reflect_resize_to_parent"] = const_327;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1146;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
