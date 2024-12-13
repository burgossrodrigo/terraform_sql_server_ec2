# docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -e "MSSQL_PID=Evaluation" -p 1433:1433  --name sqlpreview --hostname sqlpreview -d mcr.microsoft.com/mssql/server:2022-preview-ubuntu-22.04

# ssh -f -N -i chave_acesso_ssh.pem -L 1436:172.31.1.178:1433 ec2-user@ec2-00-000-000-000.compute-1.amazonaws.com