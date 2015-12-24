//: Playground - noun: a place where people can play

import Cocoa

var abc="123"
var urlString="http://192.168.1.101:1521/Attendace/JsonController/getJson"




func httpRequest( urlString:String){
    var url:NSURL?
    var requrst:NSURLRequest?
    var conn:NSURLConnection?
    url=NSURL(string:urlString)
    
    requrst=NSURLRequest(URL:url!)
    conn=NSURLConnection(request: requrst,delegate:self)
    print(conn)
    if((conn) != nil){
        print("http连接成功!")
    }
    else{
        print("http连接失败!")
    }
    
}