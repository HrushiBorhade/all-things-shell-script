## Schedule a cronjob for Simple date logging

- At 20:52, every day, every month , every week

`chmod +x log_dates.sh`

`crontab -e`

`52 20 * * * /Users/hrushiborhade/developer/all-things-shell-script/cron-jobs/log_dates.sh`