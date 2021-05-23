Write( '<h5>save.lua</h5>\n' )
Write( 'filename: ' .. EscapeHtml( GetParam( 'filename' ) ) .. '\n' )

file = io.open( EscapeHtml( GetParam( 'filename' ) ), 'w' )
file:write( GetPayload() )
file:close()

Write( 'saved\n' )