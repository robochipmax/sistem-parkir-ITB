<?php include "header.php" ?>
<div class="full bgcolor"></div>
<div class="full">
	<div class="container pd-t60">
		<div class="row center">
			<div class="col-md-12 title">Sistem Parkir ITB</div>
			<div class="col-md-12 subtitle mg-t10 mg-b60">Kendaraan Keluar Tamu</div>
		</div>
		<div id="message"></div>
		<form id="form-input" method="get" action="proses-keluar-tamu.php">
			<div class="row">
				<div class="col-md-offset-3 col-md-2">
					<div class="input-label">Barcode</div>
				</div>
				<div class="col-md-4">
					<input class="form-control" type="text" name="barcode" id="barcode"></div>
			</div>
			<div class="row">
				<div class="col-md-offset-3 col-md-2">
					<div class="input-label">No Plat</div>
				</div>
				<div class="col-md-2">
					<input class="form-control" type="text" name="noplat" id="noplat" readonly></div>
			</div>
			<div class="row">
				<div class="col-md-offset-3 col-md-2">
					<div class="input-label">Jam Masuk</div>
				</div>
				<div class="col-md-2">
					<input class="form-control" type="text" name="jam-masuk" id="jam-masuk" readonly></div>
			</div>
			<div class="row">
				<div class="col-md-offset-3 col-md-2">
					<div class="input-label">Jam Keluar</div>
				</div>
				<div class="col-md-2">
					<input class="form-control" type="text" name="jam-keluar" id="jam-keluar" readonly></div>
			</div>
			<div class="row">
				<div class="col-md-offset-3 col-md-2">
					<div class="input-label">Total</div>
				</div>
				<div class="col-md-2">
					<input class="form-control" type="text" name="biaya" id="biaya" readonly></div>
			</div>
			<div class="row mg-t60 mg-b60">
				<div class="btn blue-button center col-md-offset-5 col-md-2 col-md-offset-5" id="btn-submit">Submit</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script>

	var diff = 0;
	$(document).ready(function(){
		var setTime= setInterval(function(){
			var d = new Date();
			$('#jam-keluar').val(d.toTimeString().split(' ')[0]);
		},1000);

	});

	$('#barcode').on('keyup',function (){
		var toSeconds = function(s){
			var b = s.split(':');
			return b[0]*3600 + b[1]*60 + b[2]*1 ;
		};
		var setInput = function(a,b,c){
			$('#noplat').val(a);
			$('#jam-masuk').val(b);
			$('#biaya').val(c);
		}
		$.ajax({url:"find-tamu-out.php?id="+$(this).val(), success: function(result){
				console.log(result);
				var hitung = function(){
					var total = 0;
					
					var end = toSeconds($('#jam-keluar').val());
					var start = toSeconds($('#jam-masuk').val());
					var diff = end - start;

					if(start > end){
						diff = diff + (24*60*60);
					}

					console.log(Math.ceil(diff/3600));
					diff = Math.ceil(diff/3600);

					total = 0;
					console.log("Total "+diff)
					return total+tarif;
				}
			//else console.log("ngga");
				if(result.length > 0){
					var json = JSON.parse(result);
					console.log(json);
					jenis = json.jenis;
					tarif = json.tarif;
					setInput(json.no_plat, json.jam_masuk, hitung());
				}
				else{
					jenis = "";
					setInput("","","");
				}
			}
		});
	});

	$('#btn-submit').on('click',function(){
		$("#form-input").submit();
	});
</script>
<?php include "footer.php" ?>