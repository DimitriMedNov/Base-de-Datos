<?php
// Esta rutina crea una imagen con conco numeros 
// El codigo es dejado en cookie
header("content-type:image/png");
$im=@imagecreatetruecolor(110,31);
$color_fondo=imagecolorallocate($im, 102, 102, 153); #color negro
$color_texto=imagecolorallocate($im, 255, 255, 255); #color blanco
$key="";
for($x=15; $x<=95; $x+=20){
	$key.= ($num=rand(0,9));
	imagechar($im, rand(3,5), $x, rand(2,14), $num, $color_texto);
}
imagepng($im);
imagedestroy($im);
setcookie("imgcode",$key);
?>