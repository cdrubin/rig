SetHeader( 'Access-Control-Allow-Origin', '*' )
contents = LoadAsset( GetParam( 'filename' ) )
Write( contents )