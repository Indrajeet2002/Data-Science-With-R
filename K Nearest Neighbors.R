> library(class)
> iris%>%view()
> testindex <- sample(1:150, 100)
> testindex
> trainfeatures <- iris[testindex, 1:4]
> trainlabels <- iris[testindex, 5]
> trainindex <- testindex
> testindex <- setdiff(1:150, trainindex)
> testindex
> testfeatures <- iris[testindex, 1:4]
> testlabels <- iris[testindex, 5]
> prediction <- knn(train = trainfeatures, test = testfeatures, cl = trainlabels)
> prediction %>% View()
> cbind(testlabels, prediction) %>% View()
> table(testlabels, prediction)