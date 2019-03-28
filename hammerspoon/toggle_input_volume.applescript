set inputVolume to input volume of (get volume settings)
if inputVolume = 0 then
    set inputVolume to 100
else
    set inputVolume to 0
end if
set volume input volume inputVolume
