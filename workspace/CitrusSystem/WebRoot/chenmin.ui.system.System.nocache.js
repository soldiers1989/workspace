function chenmin_ui_system_System(){
	var k=window,j=document,s=k.external,C,u,p,o='',w={},F=[],B=[],n=[],y,A;
	if(!k.__gwt_stylesLoaded){
		k.__gwt_stylesLoaded={};
	}
	if(!k.__gwt_scriptsLoaded){
		k.__gwt_scriptsLoaded={};
		}
	var x=k.onload;k.onload=function(a){
		if(x){
			k.onload=x;k.onload(a);
			}
		p=true;v();
		};
		function t(){
			try{
				return s&&(s.gwtOnLoad&&k.location.search.indexOf('gwt.hybrid')== -1);
				}catch(a){
					return false;
					}
				}
function v(){
	if(C&&(u&&p)){
		var c=j.getElementById('chenmin.ui.system.System');
		var b=c.contentWindow;b.__gwt_initHandlers=chenmin_ui_system_System.__gwt_initHandlers;
		if(t()){
			b.__gwt_getProperty=function(a){
				return q(a);
				};
				}
		chenmin_ui_system_System=null;
		b.gwtOnLoad(y,'chenmin.ui.system.System',o);
		}
	}
function r(){
	var f,e=j.getElementById('__gwt_js_marker_chenmin.ui.system.System');
	if(e){
		f=e.nextSibling;
		}
	else{
		j.write('<script id="__gwt_marker_chenmin.ui.system.System"><\/script>');
		e=j.getElementById('__gwt_marker_chenmin.ui.system.System');
		if(e){
			f=e.previousSibling;
			}
		}
	function c(b){
		var a=b.lastIndexOf('/');
		return a>=0?b.substring(0,a+1):'';
		};
		if(f&&f.src){
			o=c(f.src);
			}
		if(o==''){
			o=c(j.location.href);
			}
		else if(o.match(/^\w+:\/\//)){
			
		}
		else{
			var d=j.createElement('img');
			d.src=o+'clear.cache.gif';o=c(d.src);
			}
		if(e){
			e.parentNode.removeChild(e);
			}
		}
function z(){
	var f=document.getElementsByTagName('meta');
	for(var d=0,g=f.length;d<g;++d){
		var e=f[d],h=e.getAttribute('name'),b;
		if(h){
			if(h=='gwt:property'){
				b=e.getAttribute('content');
				if(b){
					var i,c=b.indexOf('=');
					if(c>=0){
						h=b.substring(0,c);i=b.substring(c+1);
						}
					else{
						h=b;i='';
						}
					w[h]=i;
					}
				}
			else if(h=='gwt:onPropertyErrorFn'){
				b=e.getAttribute('content');
				if(b){
					try{
						A=eval(b);
						}
					catch(a){
						alert('Bad handler "'+b+'" for "gwt:onPropertyErrorFn"');
						}
					}
				}
			else if(h=='gwt:onLoadErrorFn'){
				b=e.getAttribute('content');
				if(b){
					try{
						y=eval(b);
						}catch(a){
							alert('Bad handler "'+b+'" for "gwt:onLoadErrorFn"');
							}
						}
				}
			}
		}
	}
function m(a,b){
	return b in F[a];
	}
function l(a){
	var b=w[a];
	return b==null?null:b;
	}
function E(d,e){
	var a=n;
	for(var b=0,c=d.length-1;b<c;++b){
		a=a[d[b]]||(a[d[b]]=[]);}a[d[c]]=e;
		}
function q(d){
	var e=B[d](),b=F[d];
	if(e in b){
		return e;
		}
	var a=[];
	for(var c in b){
		a[b[c]]=c;
		}
	if(A){A(d,a,e);
	}
	throw null;
	}
B['user.agent']=function(){
	var d=navigator.userAgent.toLowerCase();
	var b=function(a){
		return parseInt(a[1])*1000+parseInt(a[2]);
		};
		if(d.indexOf('opera')!= -1){
			return 'opera';
			}
		else if(d.indexOf('webkit')!= -1){
			return 'safari';
			}
		else if(d.indexOf('msie')!= -1){
			var c=/msie ([0-9]+)\.([0-9]+)/.exec(d);
			if(c&&c.length==3){
				if(b(c)>=6000){
					return 'ie6';
					}
				}
			}
		else if(d.indexOf('gecko')!= -1){
			var c=/rv:([0-9]+)\.([0-9]+)/.exec(d);
			if(c&&c.length==3){
				if(b(c)>=1008)return 'gecko1_8';
				}
			return 'gecko';
			}
		return 'unknown';
			};
			F['user.agent']={
					'gecko':0,'gecko1_8':1,'ie6':2,'opera':3,'safari':4
					};
			chenmin_ui_system_System.onInjectionDone=function(){
				C=true;v();
				};
				chenmin_ui_system_System.onScriptLoad=function(){
					u=true;
					v();
					};
					r();
					z();
					var D;
					if(t()){
						D='hosted.html?chenmin_ui_system_System';
						}
					else{
						try{
							E(['gecko'],'5D3223EEE5FD60CE564A9279D703FB91');
							E(['opera'],'AA19C22E9E999647D83F84A52C1F4F9D');
							E(['ie6'],'B87C6F4A4AA039FDA5464AA89D152343');
							E(['safari'],'C02D3E180C04B251AF2B17C2CA39B74A');
							E(['gecko1_8'],'D474352C8872B8D746B0489BEAA44D00');
							D=n[q('user.agent')];
							}catch(a){
								return;
								}
							D+='.cache.html';
							}
					j.write('<iframe id="chenmin.ui.system.System" style="width:0;height:0;border:0" src="'+o+"aa/"+D+'"><\/iframe>');
					if(!__gwt_stylesLoaded['Ajax.css']){
						__gwt_stylesLoaded['Ajax.css']=true;
						document.write('<link rel="stylesheet" href="'+o+"aa/"+'Ajax.css">');
						}
					if(!__gwt_stylesLoaded['Log.css']){
							__gwt_stylesLoaded['Log.css']=true;
							document.write('<link rel="stylesheet" href="'+o+"aa/"+'Log.css">');
							}
					if(!__gwt_stylesLoaded['Link.css']){
						__gwt_stylesLoaded['Link.css']=true;
						document.write('<link rel="stylesheet" href="'+o+"aa/"+'Link.css">');
						}
					j.write("<script>chenmin_ui_system_System.onInjectionDone('chenmin.ui.system.System')<\/script>");
					}
chenmin_ui_system_System.__gwt_initHandlers=function(i,e,j){
	var d=window,g=d.onresize,f=d.onbeforeunload,h=d.onunload;d.onresize=function(a){
		i();
		if(g)
			g(a);
		};
		d.onbeforeunload=function(a){
			var c=e();var b;if(f)b=f(a);if(c!==null)return c;return b;
			};
			d.onunload=function(a){
				j();if(h)h(a);
				};
				};
				chenmin_ui_system_System();
				
