function turbo {
    sudo pstate-frequency --set --turbo $1
    sudo pstate-frequency --set --max 100
}
