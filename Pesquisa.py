import tweepy
import conexao as cont

consumer_key = ""
consumer_secret = ""
access_token = ""
access_token_secret = ""

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

busca = ["Game" or "Game Indie" or "Game Indies" or "game indie" or "game" or "Indie Game" or "indie games"]
pesquisa = api.search(q=busca)

for recebe in pesquisa:
    nome = recebe.user.screen_name
    localidade = recebe.user.location
    tuitado = recebe.text
    cria = """insert into """+cont.tabela+""" (nome, localidade, tweet) values (%s,%s,%s);"""
    dados = (nome,localidade,tuitado)
    criando = cont.conn.execute(cria,dados)
    PT = cont.conn.execute('select * from '+cont.tabela+';')
    formt = cont.pandas.DataFrame(PT.fetchall())
