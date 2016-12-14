import pandas
import MySQLdb
import sqlalchemy
from sqlalchemy import create_engine

parametros_conexao='mysql://balerion21:kamikakushi@balerion21.mysql.pythonanywhere-services.com/balerion21$TrabalhoBD?charset=utf8'
engine = create_engine(parametros_conexao)

conn = engine.connect()

tabela = 'TabelaBuscaTweett'
result = conn.execute('CREATE TABLE IF NOT EXISTS ' + tabela + '(nome varchar (255),localidade varchar(255), tweet varchar(255));')