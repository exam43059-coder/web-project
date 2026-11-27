# Толық deployment жоспары

1. **Веб-қосымша дайындау** — index.html, style.css, script.js.
2. **Локалды тестілеу** — браузерде / `python3 -m http.server`.
3. **Git репозиторийіне орналастыру** — `git init`, `git add .`, `git commit -m "Initial web application"`, `git remote add origin URL`, `git push -u origin main`.
4. **Сервер дайындау** — `ssh username@SERVER_IP`, `sudo apt update`.
5. **Nginx орнату** — `sudo apt install nginx`, `sudo systemctl status nginx`.
6. **Қосымшаны көшіру** — `scp`, содан кейін `sudo cp ... /var/www/html/`.
7. **Firewall** — `ufw allow OpenSSH`, `80/tcp`, `443/tcp`; `ufw status`.
8. **Домен** — DNS-те A жазбасы: `mywebsite.kz → SERVER_IP`; Nginx `server_name`.
9. **HTTPS** — `sudo apt install certbot python3-certbot-nginx`, `sudo certbot --nginx -d mywebsite.kz -d www.mywebsite.kz`.
10. **Тексеру** — IP/домен, HTML, CSS, JS, HTTPS, мобильді құрылғы, `access.log`, `error.log`.

## Порттар
- 22 (SSH) — серверді қашықтан басқару.
- 80 (HTTP) — қарапайым веб-трафик.
- 443 (HTTPS) — TLS арқылы қорғалған трафик.
