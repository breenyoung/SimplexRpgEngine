{
    d3d_transform_stack_push();    
    camera_tilt();
    draw_set_blend_mode(bm_normal);
    draw_set_color(c_white);
    d3d_set_culling(true);
    texture_set_repeat(true);
    d3d_model_draw(global.modelLight,0,0,0,surface_get_texture(surfaceLightCache));
    draw_set_blend_mode_ext(bm_dest_color,bm_zero);
    d3d_model_draw(global.modelTexture,0,0,0,sprite_get_texture(spriteWallStrip,0));
    draw_set_blend_mode(bm_normal);
    d3d_transform_stack_pop();    
}