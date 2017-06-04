set( "log.file.path", "/tmp/liquidsoap")
set( 'log.level', 5 )
set( 'harbor.verbose', true )
set( "harbor.bind_addr", "0.0.0.0" )
set( "harbor.ssl.certificate", "/tmp/server.crt");
set( "harbor.ssl.private_key", "/tmp/server.key");


output.icecast(%vorbis, host = "172.17.42.1", port = 8082, password = "hackme", mount = "liq.ogg", mksafe(input.harbor.ssl("mount",port=8083)))
