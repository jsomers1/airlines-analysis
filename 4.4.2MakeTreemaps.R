# fix data errors
library(treemap)
dat = read.csv("query-hive-57.csv", header = TRUE)
dat
dat[107,"tree1.state"] = "LA"
dat[201,"tree1.state"] = "ND"
names(dat) = c("port","ct","state")
rownames(dat)<-dat$port

# tree map for outgoing flights by airport and state for 2000
treemap(dat,
        index = c("state", "port"),
        vSize = "ct",
        type = "value",
        vColor="ct",
        palette = "Blues",
        title = "Outgoing Flights By Airport in 2000")

# tree map for outgoing flights by airport and state for 2003

dat2 = read.csv("query-hive-58.csv", header = TRUE)
dat2[266,"tree2.state"] = "MI"
dat2[222,"tree2.state"] = "PA"
dat2[193,"tree2.state"] = "CA"
dat2[106,"tree2.state"] = "LA"
names(dat2) = c("port","ct","state")
rownames(dat2)<-dat2$port
dat2

treemap(dat2,
        index = c("state", "port"),
        vSize = "ct",
        type = "value",
        vColor="ct",
        palette = "Blues",
        title = "Outgoing Flights By Airport in 2003")
