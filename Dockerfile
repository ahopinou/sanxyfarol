# farol do sanxyC no Render: só o binário (compilado pela Sanxy para linux-x64), sem Node e sem sistema.
# Antes de subir, no celular:  cd ~/sanxyC && ./ligar farol   (grava farol/farol-linux-x64)
# No Render: SANXYC_CHAVE no painel (Environment), 16 caracteres ou mais; nunca neste arquivo.
FROM scratch
WORKDIR /app
COPY farol-linux-x64 /app/farol
ENV PORT=10000
EXPOSE 10000
CMD ["/app/farol"]