:: �������ַ���
echo %1
:: ��Ŀ������ַ
echo %2

:: ɾ����ʷ��
del %1 /f /q /a 

:: ������
set nupkg=""

:: ���
nuget Pack %2 -Build -Properties Configuration=Release

:: ���°�����
for %%a in (dir /s /a /b "./%1") do (set nupkg=%%a)

:: ���Ͱ�
nuget push %nupkg% 4e3f500e-a031-45fa-b746-5762275e7561 -Source https://www.nuget.org/api/v2/package