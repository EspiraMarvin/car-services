//admin registration
$('#adminregister-frm').validationEngine('attach').ajaxForm({
    dataType: 'json',
    resetForm: true,
    'beforeSubmit' : function (){
        // Show loader
        $('.status').Loader('Registering...');
    },
    'success' : function (resp){
        // Show message and/or redirect to url!
        $('.status').CheckinAlert(resp.status || false ? 'info' : 'danger', resp.msg || 'Something went wrong');
        if(resp.status){
           window.location = resp.url;
        }else{
           //window.location = resp.url;
        }
    }
});


//inquire information frm
$('#inquire-frm').validationEngine('attach').ajaxForm({
    dataType: 'json',
    resetForm: true,
    'beforeSubmit' : function (){
        // Show loader
        $('.inquire-status').Loader('Sending...');
    },
    'success' : function (resp){
        // Show message and/or redirect to url!
        $('.inquire-status').CheckinAlert(resp.status || false ? 'info' : 'danger', resp.msg || 'Something went wrong');
        if(resp.status){
            window.location = resp.url;
        }else{
            //window.location = resp.url;
        }
    }
});

