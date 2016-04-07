'use strict';

angular.module('watererpApp')
    .controller('CollDetailsDialogController', function ($scope, $state, CollDetails, ParseLinks, $stateParams, PaymentTypes, 
    		InstrumentIssuerMaster, CustDetails, CustDetailsService) {

        $scope.collDetailss = [];
        $scope.predicate = 'id';
        $scope.paymenttypess = PaymentTypes.query();
        $scope.instrumentissuermasters = InstrumentIssuerMaster.query();
        $scope.custDetailss = CustDetails.query();
        $scope.custDetails = {};
        $scope.collDetails = {};
        
        //$scope.paymenttypess1 = PaymentTypes1.query();instrumentIssuerMasters
        $scope.reverse = true;
        $scope.page = 0;
        $scope.loadAll = function() {
            CollDetails.query({page: $scope.page, size: 20, sort: [$scope.predicate + ',' + ($scope.reverse ? 'asc' : 'desc'), 'id']}, function(result, headers) {
                $scope.links = ParseLinks.parse(headers('link'));
                for (var i = 0; i < result.length; i++) {
                    $scope.collDetailss.push(result[i]);
                }
            });
        };
        $scope.reset = function() {
            $scope.page = 0;
            $scope.collDetailss = [];
            $scope.loadAll();
        };
        $scope.loadPage = function(page) {
            $scope.page = page;
            $scope.loadAll();
        };
        $scope.loadAll();
        
        
        $scope.collDetailsId = $stateParams.id;
        if($stateParams.id != null){        
        	CollDetails.get({id : $scope.collDetailsId}, function(result) {
            $scope.collDetails = result;
            $scope.disEnableInstr($scope.collDetails.paymentTypes.paymentMode);
        });
    	}
        
        
        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:collDetailsUpdate', result);
            //$uibModalInstance.close(result);
            $scope.isSaving = false;
            $state.go('collDetails');
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.collDetails.id != null) {
                CollDetails.update($scope.collDetails, onSaveSuccess, onSaveError);
            } else {
                CollDetails.save($scope.collDetails, onSaveSuccess, onSaveError);
            }
        };
        
        $scope.datePickerForReceiptDt = {};

        $scope.datePickerForReceiptDt.status = {
            opened: false
        };

        $scope.datePickerForReceiptDtOpen = function($event) {
            $scope.datePickerForReceiptDt.status.opened = true;
        };
        $scope.datePickerForInstrDt = {};

        $scope.datePickerForInstrDt.status = {
            opened: false
        };

        $scope.datePickerForInstrDtOpen = function($event) {
            $scope.datePickerForInstrDt.status.opened = true;
        };
        $scope.datePickerForCollTime = {};

        $scope.datePickerForCollTime.status = {
            opened: false
        };

        $scope.datePickerForCollTimeOpen = function($event) {
            $scope.datePickerForCollTime.status.opened = true;
        };

        $scope.refresh = function () {
            $scope.reset();
            $scope.clear();
        };

        $scope.clear = function () {
            $scope.collDetails = {
                reversalRef: null,
                receiptNo: null,
                receiptAmt: null,
                receiptDt: null,
                receiptMode: null,
                instrNo: null,
                instrDt: null,
                instrIssuer: null,
                svrStatus: null,
                can: null,
                consName: null,
                terminalId: null,
                collTime: null,
                txnStatus: null,
                meterReaderId: null,
                userId: null,
                remarks: null,
                settlementId: null,
                extSettlementId: null,
                lat: null,
                longI: null,
                id: null
            };
        };
        
        $scope.getCustDetails = function(can){
        	CustDetailsService.get({can : can}, function(result) {
                $scope.custDetails = result;
                $scope.collDetails.consName = $scope.custDetails.consName;
                $scope.collDetails.can = $scope.custDetails.can;
                //$scope.collDetails.instrumentissuermaster = $scope.custDetails.instrumentissuermaster;
            });
        }
        
        $scope.setFocus = function(){
        	//alert("setFocus");
        	document.getElementById("field_custDetails").focus;
        }
        
                
        $scope.disEnableInstr = function(paymentMode){
        	//alert("receiptMode	"+paymentMode);	field_paymentTypes
        	if($scope.collDetails.paymentTypes!=null){
        		//var paymentMode=$scope.collDetails.paymentTypes.paymentMode;		
        	//alert("receiptMode	"+paymentMode);
        	if(paymentMode=='Cash'){
        		//alert("paymentMode is "+paymentMode);		field_instrNo	field_instrDt	field_receiptDtBtn	field_instrumentIssuerMaster
        		document.getElementById("field_instrNo").disabled=true;
        		document.getElementById("field_instrDt").disabled=true;
        		document.getElementById("field_receiptDtBtn").disabled=true;
        		document.getElementById("field_instrumentIssuerMaster").disabled=true;
        		$scope.collDetails.instrNo ='';
        		$scope.collDetails.instrDt ='';
        		$scope.collDetails.instrumentIssuerMaster=null;
        		//$scope.collDetails.instrumentIssuerMaster.id =null;
        		//document.getElementById("field_instrNo").value='';
        		document.getElementById("field_instrDt").value='';
        		document.getElementById("field_instrumentIssuerMaster").value='';
        		
        	}else{
        		//alert("paymentMode is "+paymentMode);
        		document.getElementById("field_instrNo").disabled=false;
        		document.getElementById("field_instrDt").disabled=false;
        		document.getElementById("field_receiptDtBtn").disabled=false;
        		document.getElementById("field_instrumentIssuerMaster").disabled=false;
        	}
        	}else{
        		document.getElementById("field_instrNo").disabled=false;
        		document.getElementById("field_instrDt").disabled=false;
        		document.getElementById("field_receiptDtBtn").disabled=false;
        		document.getElementById("field_instrumentIssuerMaster").disabled=false;
        		$scope.collDetails.instrNo ='';
        		$scope.collDetails.instrDt ='';
        		$scope.collDetails.instrumentIssuerMaster=null;
        	}
        }
    });







/*'use strict';

angular.module('watererpApp').controller('CollDetailsDialogController',
    ['$scope', '$stateParams', '$uibModalInstance', 'entity', 'CollDetails',
        function($scope, $stateParams, $uibModalInstance, entity, CollDetails) {

        $scope.collDetails = entity;
        $scope.load = function(id) {
            CollDetails.get({id : id}, function(result) {
                $scope.collDetails = result;
            });
        };

        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:collDetailsUpdate', result);
            $uibModalInstance.close(result);
            $scope.isSaving = false;
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.collDetails.id != null) {
                CollDetails.update($scope.collDetails, onSaveSuccess, onSaveError);
            } else {
                CollDetails.save($scope.collDetails, onSaveSuccess, onSaveError);
            }
        };

        $scope.clear = function() {
            $uibModalInstance.dismiss('cancel');
        };
        $scope.datePickerForReceiptDt = {};

        $scope.datePickerForReceiptDt.status = {
            opened: false
        };

        $scope.datePickerForReceiptDtOpen = function($event) {
            $scope.datePickerForReceiptDt.status.opened = true;
        };
        $scope.datePickerForInstrDt = {};

        $scope.datePickerForInstrDt.status = {
            opened: false
        };

        $scope.datePickerForInstrDtOpen = function($event) {
            $scope.datePickerForInstrDt.status.opened = true;
        };
        $scope.datePickerForCollTime = {};

        $scope.datePickerForCollTime.status = {
            opened: false
        };

        $scope.datePickerForCollTimeOpen = function($event) {
            $scope.datePickerForCollTime.status.opened = true;
        };
}]);
*/