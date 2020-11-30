#' @export
test_summary=function(x)UseMethod('test_summary')
#' @export
test_summary.default=function(x){
  list(N=length(x),class=class(x),values=unique(x))
}
#' @export
test_summary.factor=function(x){
  list(N=length(x),class=class(x),values=as.character(unique(x)),levels=levels(x),as_numeric=as.numeric(unique(x)),anyMissing=anyNA(x),ordered=is.ordered(x))
}
#' @export
test_summary.data.table=function(x){
  att=attributes(x)
  att$.internal.selfref=NULL
  if(nnull( att$casted_factors)){
    att$casted_factors=lapply(att$casted_factors,test_summary)
  }
  list(rows=nrow(x),cols=ncol(x),attributes=att)
}
#' @export
test_summary.list=function(x){
  att=attributes(x)

  list(length=length(x),attributes=att)
}
#' @export
test_summary.numeric=function(x){
  list(sum=sum(x,na.rm = T),min=min(x,na.rm = T),max=max(x,na.rm = T),avg=mean(x,na.rm = T),N=length(na.omit(x)),class=class(x),anyMissing=anyNA(x))
}
#' @export
test_summary.Date=function(x){
  list(min=min(x,na.rm = T),max=max(x,na.rm = T),avg=mean(x,na.rm = T),N=length(na.omit(x)),class=class(x),anyMissing=anyNA(x))
}
#' @export
test_summary.POSIXct=function(x){
  list(min=min(x,na.rm = T),max=max(x,na.rm = T),avg=mean(x,na.rm = T),N=length(na.omit(x)),class=class(x),anyMissing=anyNA(x))
}
#' @export
test_summary.integer=function(x){
  list(sum=sum(x,na.rm = T),min=min(x,na.rm = T),max=max(x,na.rm = T),avg=mean(x,na.rm = T),N=length(na.omit(x)),class=class(x),anyMissing=anyNA(x))
}
#' @export
test_summary.call=function(x){
  list(exprTools::exprs_deparse(list(x))[[1]])
}
#' @export
test_summary.units=function(x){
  list(attr(x,"units"),sum=sum(x,na.rm = T),min=min(x,na.rm = T),max=max(x,na.rm = T),avg=mean(x,na.rm = T),N=length(na.omit(x)),class=class(x),anyMissing=anyNA(x))
}
