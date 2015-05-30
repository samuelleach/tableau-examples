# via github user Brock Tibert @Btibert3

cluster_tableau = function(.arg1, .arg2, .arg3){
 # put the tableau data into a dataframe
 df = data.frame(v1 = .arg1,
                 v2 = .arg2,
                 v3 = .arg3)
 # scale the data
 df = scale(df)
 # 3 clusters using kmean
 clus = kmeans(df, 3)
 # return the cluster assignments
 return(as.character(clus$cluster))
}
