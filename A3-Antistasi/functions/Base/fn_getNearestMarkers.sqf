params ["_position"];

/*  Returns the marker near the given position

    Execution on: All

    Scope: External

    Params:
        _position : OBJECT or ARRAY : Either an object or a position

    Returns:
        _nearbyMarkers : ARRAY of STRINGS : Array of the nearby markers, empty array if none near
*/

//If position is object, get the position of the object
if (_position isEqualType objNull) then
{
    _position = getPos _position;
};

//Get the chunkID
private _x = _position select 0;
private _y = _position select 1;

_x = floor (_x / 1000);
_y = floor (_y / 1000);

private _chunkID = format ["%1/%2", _x, _y];

//Get the nearby markers hashed by the createMarkerHash function
private _nearbyMarkers = missionNamespace getVariable [format ["%1_marker", _chunkID], []];

_nearbyMarkers;
