# From http://tableaulove.tumblr.com/post/82299898419/ip-based-geo-location-in-tableau-new-now-with-more

freegeoip <- function(ip, format = ifelse(length(ip)==1,'list','dataframe'))
{
    if (1 == length(ip))
    {
        # a single IP address
        require(rjson)
        url <- paste(c("http://freegeoip.net/json/", ip), collapse='')
        ret <- fromJSON(readLines(url, warn=FALSE))
        ret <- data.frame(t(unlist(ret)))
        latlon <- paste(ret$latitude,ret$longitude,sep=",")
        return(latlon)

    } 
}  