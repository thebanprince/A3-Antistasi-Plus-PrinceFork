/*  Create a hash function, where the markers are hashed by positions

    Execution on: Server

    Scope: Internal

    Params:
        None

    Returns:
        Nothing
*/

private _fileName = "createMarkerHash";
private _worldSize = worldSize;
private _chunkSize = 1000; //1000 meters per marker
private _offset = _chunkSize / 2;

private _markerNeeded = floor (_worldSize / _chunkSize) + 1;
private _markerDistance = ((sqrt (2)) * 500) + distanceSPWN;

[2, "Starting creation of marker hash", _fileName] call A3A_fnc_log;

private _deltaTime = time;
for "_i" from 0 to (_markerNeeded - 1) do
{
    for "_j" from 0 to (_markerNeeded - 1) do
    {
        private _chunkPos = [_offset + _i * _chunkSize, _offset + _j * _chunkSize];
        private _chunkID = format ["%1/%2", _i, _j];

        private _nearbyMarkers = markersX select {((getMarkerPos _x) distance2D _chunkPos) < _markerDistance};

        missionNamespace setVariable [format ["%1_marker", _chunkID], _nearbyMarkers, true];
    };
};

[3, format ["Created marker hash in %1 seconds", (time - _deltaTime)], _fileName] call A3A_fnc_log;
