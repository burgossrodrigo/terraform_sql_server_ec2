# docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -e "MSSQL_PID=Evaluation" -p 1433:1433  --name sqlpreview --hostname sqlpreview -d mcr.microsoft.com/mssql/server:2022-preview-ubuntu-22.04

# ssh -f -N -i chave_acesso_ssh.pem -L 1436:172.31.1.178:1433 ec2-user@ec2-00-000-000-000.compute-1.amazonaws.com

# docker cp AdventureWorks2022.bak b62e7187588a:/var/opt/mssql/data
# docker exec -ti b62 "bash"
# ls /var/opt/mssql/data

# docker cp AdventureWorks2019.bak 40a393d33bbe:/var/opt/mssql/data

# ssh -f -N -i porteiro_key.pem -L 1436:172.31.1.178:1433 ec2-user@ec2-3-239-182-149.compute-1.amazonaws.com

# Restore
```sql
exec msdb.dbo.rds_restore_database 
@restore_db_name='AdventureWorks', 
@s3_arn_to_restore_from='arn:aws:s3:::sqlserver-backup-rodrigo/AdventureWorks2019.bak';
```

# Backup

```sql
exec msdb.dbo.rds_backup_database @source_db_name='AdventureWorks', 
@s3_arn_to_backup_to='arn:aws:s3:::sqlserver-backup-rodrigo/sqlserver-backup-rodrigo-custom.bak', 
@number_of_files=1;
```

# docker system prune -a --volumes