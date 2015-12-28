set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_79

set SSI_HTTP_HOME=D:\SSI_HTTP_Server_Windows

set SERVICE_NAME=SSI_HTTP

set SSI_HTTP_NAME=SSI_HTTP_Server.jar

set MAIN_CLASS=com.iheart.ssi.socket.SocketServer_Windows

set HTTP_CONF=%SSI_HTTP_HOME%\conf\http.conf

set LOG_CONF=%SSI_HTTP_HOME%\conf\log.conf

set WEB_HOME=%SSI_HTTP_HOME%\WEB-INF

set CONSOL_LOG_PATH=%SSI_HTTP_HOME%\out\http.log

rem ����ڰ� ǥ���ϰ� ���� �Ķ���͸� �Ѱ��ش�.

set LOG_HEADER_PARAM_01="Windows"
set LOG_HEADER_PARAM_02="��������� �α� �Ķ����"
set LOG_HEADER_PARAM_03="������"


"%SSI_HTTP_HOME%\JavaService.exe" -install "%SERVICE_NAME%" "%JAVA_HOME%\jre\bin\server\jvm.dll" -Djava.class.path="%SSI_HTTP_HOME%\bin\%SSI_HTTP_NAME%" -Dfile.encoding=UTF-8 -start "%MAIN_CLASS%" -params "%HTTP_CONF%" "%LOG_CONF%" "%WEB_HOME%" %LOG_HEADER_PARAM_01% %LOG_HEADER_PARAM_02% %LOG_HEADER_PARAM_03% -out "%CONSOL_LOG_PATH%"


net start "%SERVICE_NAME%"
