var _size = (sprite_get_width(argument0) / 3)
var _x1 = argument1
var _y1 = argument2
var _x2 = argument3
var _y2 = argument4
var _w = (_x2 - _x1)
var _h = (_y2 - _y1)
var _columns = (_w div _size)
var _rows = (_h div _size)
draw_sprite_part(argument0, 0, 0, 0, _size, _size, _x1, _y1)
draw_sprite_part(argument0, 0, (_size * 2), 0, _size, _size, (_x1 + (_columns * _size)), _y1)
draw_sprite_part(argument0, 0, 0, (_size * 2), _size, _size, _x1, (_y1 + (_rows * _size)))
draw_sprite_part(argument0, 0, (_size * 2), (_size * 2), _size, _size, (_x1 + (_columns * _size)), (_y1 + (_rows * _size)))
for (var i = 1; i < _rows; i++)
{
    draw_sprite_part(argument0, 0, 0, _size, _size, _size, _x1, (_y1 + (i * _size)))
    draw_sprite_part(argument0, 0, (_size * 2), _size, _size, _size, (_x1 + (_columns * _size)), (_y1 + (i * _size)))
}
for (i = 1; i < _columns; i++)
{
    draw_sprite_part(argument0, 0, _size, 0, _size, _size, (_x1 + (i * _size)), _y1)
    draw_sprite_part(argument0, 0, _size, (_size * 2), _size, _size, (_x1 + (i * _size)), (_y1 + (_rows * _size)))
}
for (i = 1; i < _columns; i++)
{
    for (var j = 1; j < _rows; j++)
        draw_sprite_part(argument0, 0, _size, _size, _size, _size, (_x1 + (i * _size)), (_y1 + (j * _size)))
}
