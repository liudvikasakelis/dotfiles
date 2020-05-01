wideScreen <- function(howWide=Sys.getenv("COLUMNS")) {
  options(width=as.integer(howWide))
}

options(max.print=1000)

qCon <- function(server.name, database.name=NULL, auth="~/.emd.auth") {
  if (!is.list(auth)) auth <- as.list(fromJSON(auth))
  return(
    dbConnect(
      odbc(),
      Driver="ODBC Driver",
      Server=server.name,
      Database=database.name,
      UID=auth$username,
      PWD=auth$password,
      Port=1433
    )
  )
}

SendMSMTP <- function(from, to, subject, msg) {
  system(paste(
    "echo 'Subject: ", subject,
    "\n\n", msg,
    "'| msmtp --from", from,
    to
  ))
}

options(browser="firefox")
