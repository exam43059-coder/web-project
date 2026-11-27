# Менің веб-қосымшам

Қарапайым статикалық веб-қосымша (HTML + CSS + JavaScript), Nginx арқылы серверге орналастыруға арналған.

## Жоба құрылымы
```
project/
├── index.html
├── style.css
├── script.js
├── README.md
└── deploy/
    ├── nginx-example.conf
    ├── deploy.sh
    └── deployment-plan.md
```

## Жергілікті іске қосу
`index.html` файлын браузерде ашыңыз немесе:
```
python3 -m http.server 8000
```
және `http://localhost:8000` мекенжайын ашыңыз.

## Серверге орналастыру (қысқаша)
1. `scp -r index.html style.css script.js username@SERVER_IP:/tmp/`
2. Серверде: `sudo cp /tmp/{index.html,style.css,script.js} /var/www/html/`
3. `http://SERVER_IP` мекенжайын ашыңыз.

Толық жоспар: `deploy/deployment-plan.md`
