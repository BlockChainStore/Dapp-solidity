async function test(){ 
var qtumcore = require('qtumcore-lib');
var RpcClient = require('qtumd-rpc');
const util = require('util')

var config = {
  protocol: 'http',
  user: 'test',
  pass: 'test',
  host: '127.0.0.1',
  port: '15309',
};
var rpc = new RpcClient(config);
/*
rpc.sendtocontract("7e6f72756dc3bad13f824f0187e29d124c967ec6" ,"db9cc41000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000042000000000000000000000000000000000000000000000000000000000000000570616e3132000000000000000000000000000000000000000000000000000000" ,0, 250000,0.000001 ,"qXHDoQA2FkSErTPAuidq45wwBaTCPixPEo",function(err, test) {
	if (err) {
	  return console.error(err);
	}
	console.log('test: ' + test);
	console.log('test: ' + util.inspect(test, false, null));
});

*/
/*
  rpc.callcontract("7e6f72756dc3bad13f824f0187e29d124c967ec6","cf35bdd00000000000000000000000000000000000000000000000000000000000000007",function(err, asset) {
	if (err) {
	  return console.error(err);
	}
	console.log('asset: ' + asset);
	console.log('asset: ' + util.inspect(asset, false, null));
	});
*/
/*
rpc.sendtocontract("7e6f72756dc3bad13f824f0187e29d124c967ec6","d96a094a0000000000000000000000000000000000000000000000000000000000000006",1, 250000,0.000001 ,"qaQYZmxq3EJSGvZyQ9XRyS2vTeK2Seg1sU",function(err, asset) {
	if (err) {
	  return console.error(err);
	}
	console.log('asset: ' + asset);
	console.log('asset: ' + util.inspect(asset, false, null));
  });
*/
rpc.callcontract("7e6f72756dc3bad13f824f0187e29d124c967ec6","ce6019b400000000000000000000000096834bbb7f42e6014453e81635bf04771f96a635",function(err, asset) {
	if (err) {
	  return console.error(err);
	}
	console.log('asset: ' + asset);
	console.log('asset: ' + util.inspect(asset, false, null));
	});

}test();