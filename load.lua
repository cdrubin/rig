SetHeader( 'Access-Control-Allow-Origin', '*' )

file = io.open( EscapeHtml( GetParam( 'filename' ) ), 'r' )
if ( file == nil ) then
    SetStatus( 404 )
    Write( '<h5>load.lua</h5>\n' )
    Write( 'filename: ' .. EscapeHtml( GetParam( 'filename' ) ) .. '\n' )    
else
    local content = file:read("*all")
    file:close()
    Write( content )
end