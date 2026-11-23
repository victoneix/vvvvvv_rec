if(ckpt) exit;
with(obj_chekpoint){
    ckpt = false;
}

ckpt = true;
global.ckpt_x = x;
global.ckpt_y = y;
audio_play_sound(snd_save,0,0);
