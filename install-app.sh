#!/bin/bash
set -e

# 1. Налаштування APT
export DEBIAN_FRONTEND=noninteractive
rm -rf /var/lib/apt/lists/*
apt-get clean
apt-get update -yq -o Acquire::AllowInsecureRepositories=true || true

# 2. Встановлення системних залежностей
apt-get install -yq python3-pip git build-essential python3-dev

# 3. Клонування репозиторію
cd /tmp
rm -rf azure_task_12_deploy_app_with_vm_extention
git clone https://github.com/qreqit/azure_task_12_deploy_app_with_vm_extention.git

# 4. Копіювання файлів проєкту в /app
mkdir -p /app
cp -r azure_task_12_deploy_app_with_vm_extention/app/* /app/

# 5. Встановлення залежностей Python
cd /app/todolist
if [ -f "requirements.txt" ]; then
    pip3 install --no-cache-dir -r requirements.txt
fi

# 6. Права на виконання та налаштування systemd
if [ -f "start.sh" ]; then
    chmod +x start.sh
fi

if [ -f "todoapp.service" ]; then
    cp todoapp.service /etc/systemd/system/todoapp.service
fi

systemctl daemon-reload
systemctl enable todoapp
systemctl restart todoapp