var app = angular.module('notaAgregarImprimir', ['ngRoute']);

//CONTROLADORES

app.controller("notaAgregarImprimirCtrl", function($scope, $http) {
    $("#focus-ini").focus();

    $("body").keyup(function(event){
        if(event.keyCode == 119){//F8
            $scope.add_nota();
            return false;
        }
    });
    $("body").keyup(function(event){
        if(event.keyCode == 120){//F9
            $scope.print_nota();
            return false;
        }
    });
    $("body").keyup(function(event){
        if(event.keyCode == 118){//F7
            $scope.save();
            return false;
        }
    });
    ////carga de cliente para llenar nota
    $scope.nota_usuario = sessionStorage.getItem("user");
    $scope.notaPedido_cantidad = "";
    $scope.notaPedido_precioEdit = "";
    $scope.notaPedido_resultado = 0;
    $scope.notaPedido_total = 0;
    $scope.notaPedido_entregado = 0; 
    $scope.notaPedidoForm= {};
    $scope.formDataNota= {};
    $scope.checkboxModelBaja = [{valor:"CANCELADO"},{valor:"DEBE"}];
    $scope.checkboxModel = [{value2: "si"},{value2: "no"}];


    $scope.dataF = [{valor: "contado",nombre: "CONTADO"},{valor: "credito",nombre: "CREDITO" }];
    $scope.selectedFormaPago = $scope.dataF;            


    ////carga de vendedor para llenar nota
    $.ajax({
        // la URL para la petición
        url : 'php/empleado.listar.nota.v2.php',
 
        // la información a enviar
        // (también es posible utilizar una cadena de datos)
        data : { 
            codigo: "vendedor"
        },
 
        // especifica si será una petición POST o GET
        type : 'POST',
 
        // el tipo de información que se espera de respuesta
        dataType : 'json',
 
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success : function(dataUser) {
            //console.log(dataUser);
            $scope.datav = {
                    availableOptionsVendedor: dataUser
            };
            $scope.selectedVendedor = dataUser;
            $scope.formDataNota.baja = "DEBE";
            $scope.checkboxModelBaja.valor = "DEBE";
            $(".bandera").css("color", "red");
            //**---lenar hora y taza de cambio
            $scope.$apply();
        },
 
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error : function(xhr, status) {
            console.log('Disculpe, existió un problema');
        },
 
            // código a ejecutar sin importar si la petición falló o no
        complete : function(xhr, status) {
            //console.log('Petición realizada');
            //location.href='#/usuario_listar';
            var meses = new Array ("ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE");
            var f=new Date();
            //document.write(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());   
            //$(".n_fechaCreacion").val(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());
            $(".n_fechaCreacion").val(f.getFullYear() + "-" +(f.getMonth() + 1 )+ "-" +f.getDate());
            $(".notaPedido_ma").val("Kg.");
            $scope.fecha_creacion = $(".n_fechaCreacion").val();
            //$(".nota_cam").val("6.97");
        }
    });
    ////carga de productos para llenar nota
    $.ajax({
        // la URL para la petición
        url : 'php/producto.listar.v2.php',
 
        // la información a enviar
        // (también es posible utilizar una cadena de datos)
        data : { 
            codigo: "producto"
        },
 
        // especifica si será una petición POST o GET
        type : 'POST',
 
        // el tipo de información que se espera de respuesta
        dataType : 'json',
 
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success : function(dataUser) {
            //console.log(dataUser);

            $scope.datap = {
                    availableOptionsProducto: dataUser
            };
            $scope.selectedPrecio = dataUser;
            $scope.$apply();

        },
 
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error : function(xhr, status) {
            console.log('Disculpe, existió un problema');
        },
 
            // código a ejecutar sin importar si la petición falló o no
        complete : function(xhr, status) {
            //console.log('Petición realizada');
           //location.href='#/usuario_listar';
        }
    });

    //cargar cliente
    $.ajax({
        // la URL para la petición
        url : 'php/cliente.listar.nota.v2.php',
 
        // la información a enviar
        // (también es posible utilizar una cadena de datos)
        data : { 
            id: "listar cliente"
        },
 
        // especifica si será una petición POST o GET
        type : 'POST',
 
        // el tipo de información que se espera de respuesta
        dataType : 'json',
 
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success : function(dataUser) {
            //console.log(dataUser);
            $scope.datac = {
                availableOptionsCliente: dataUser
            };
            $scope.selectedCliente = dataUser;
            /*for(i=0; i<dataUser.length;i++){
                if ( dataUser[i].id_cliente == $scope.formDataNotaModificar.id_cliente) {
                    $scope.selectedCliente = dataUser[i];
                };
            };*/
            $scope.$apply();
        },
 
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error : function(xhr, status) {
            console.log('Disculpe, existió un problema');
        },
 
        // código a ejecutar sin importar si la petición falló o no
        complete : function(xhr, status) {
            //console.log('Petición realizada');
            //location.href='#/usuario_listar';
            //var meses = new Array ("ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE");
            //var f=new Date();
            //document.write(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());   
            //$(".n_fechaCreacion").val(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());
        }
    });//fin de ajax para llenar cliente

    $scope.datoNotaPedido = "";
    $scope.listPrecio=[{
                id:"1",
                value:""
            }   
        ];

    ////agregar pedido checkbox
    $scope.editarPrecio = function(){
         if($scope.checkboxModel.value2 == "si"){//esta marcado
           //posibilita editar
           $(".notaPedido_pr").css("display","none");
           $(".np_precioS").css("display","block");  

           $(".notaPedido_su").css("display","block");
           $(".notaPedido_suEdit").css("display","none");
           $(".notaPedido_caSi").css("display","none");
           $(".notaPedido_caNo").css("display","block");
       };
       if($scope.checkboxModel.value2 == "no"){//no esta marcado
           //posibilita editar
           $(".notaPedido_pr").css("display","block");
           $(".np_precioS").css("display","none");

           $(".notaPedido_su").css("display","none");
           $(".notaPedido_suEdit").css("display","block");
           $(".notaPedido_caSi").css("display","block");
           $(".notaPedido_caNo").css("display","none");
       };
    };

    ////agregar cliente checkbox
    $scope.editarCliente = function(){
        if($scope.checkboxModelCliente.value == "si"){//esta marcado
           //posibilita editar
           $(".n_cliente").css("display","none");
           $(".crea_cliente").css("display","block");
        };
        if($scope.checkboxModelCliente.value == "no"){//no esta marcado
           //no posibilita editar
           $(".n_cliente").css("display","block");
           $(".crea_cliente").css("display","none");
        };
    };

    //********checkbox DADO DE BAJA
    $scope.n_dadoBaja = function(){
        if($scope.checkboxModelBaja.valor == "CANCELADO"){
            //console.log("si");//esta marcado
            $scope.formDataNota.baja = "CANCELADO";
            $(".bandera").css("color", "green");
        };
        if($scope.checkboxModelBaja.valor == "DEBE"){
            //console.log("no");//no esta marcado
            $scope.formDataNota.baja = "DEBE";  
            $(".bandera").css("color", "red");
        };
    };

    //********select escoger Forma de pago
    $scope.hasChangedFormaPago = function() {
        //console.log($scope.selectedFormaPago.nombre);
        $scope.formDataNota.forma_pago = $scope.selectedFormaPago.valor;
        if ($scope.selectedFormaPago.valor == "contado") {
            $scope.nota_formaPago = "CONTADO";
            $scope.fecha_vencimiento = $scope.fecha_creacion;
        };
        if ($scope.selectedFormaPago.valor == "credito") {
            $scope.nota_formaPago = "CRÉDITO";
            var date = new Date();
            var d = new Date();
            d.setDate(date.getDate() + 15);
            var meses = new Array ("ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE");
            //var f=new Date();
            //document.write(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());
            $scope.fecha_vencimiento =  d.getDate() + " - " + meses[d.getMonth()] + " - " + d.getFullYear();
        };
        //console.log($scope.selectedFormaPago.valor);
    };
    //********select escoger Cliente
    $scope.hasChangedCliente = function() {
        //console.log($scope.selectedCliente.nombre);
        //console.log($scope.selectedCliente.nombre_real +" nombre real");
        $scope.formDataNota.cliente = $scope.selectedCliente.nombre_real;
        $scope.formDataNota.empresa = $scope.selectedCliente.nombre_empresa;
        $scope.formDataNota.id_cliente = $scope.selectedCliente.id_cliente;

    };
    //********select escoger Vendedor
    $scope.hasChangedVendedor = function() {
        $scope.formDataNota.vendedor = $scope.selectedVendedor.nombre;
        $scope.formDataNota.id_empleado = $scope.selectedVendedor.id_empleado;
    };

    ////-----------------GUARDAR NOTA EN BASE DE DATOS------
    $scope.add_nota = function(){
        $scope.formDataNota.id_usuario = sessionStorage.getItem("id_user");
        $scope.formDataNota.autorizado = sessionStorage.getItem("user");
        $scope.formDataNota.fecha_creacion = $(".n_fechaCreacion").val();
        //**********enviar para agregar*****/
        ////
        $.ajax({
            // la URL para la petición
            url : 'php/nota.agregar.v2.php',
 
            // la información a enviar
            // (también es posible utilizar una cadena de datos)
            data : $scope.formDataNota,
 
            // especifica si será una petición POST o GET
            type : 'POST',
 
            // el tipo de información que se espera de respuesta
            dataType : 'json',
 
            // código a ejecutar si la petición es satisfactoria;
            // la respuesta es pasada como argumento a la función
            success : function(dataUser) {
                $(".n_numero").val(dataUser[0].id_nota);
                $(".n_fechaCreacion").val(dataUser[0].fecha_creacion);
                $scope.print_fecha_creacion =  dataUser[0].fecha_creacion;
                $scope.print_id_nota = dataUser[0].id_nota;

                $scope.$apply();
            },
 
            // código a ejecutar si la petición falla;
            // son pasados como argumentos a la función
            // el objeto de la petición en crudo y código de estatus de la petición
            error : function(xhr, status) {
                console.log('Disculpe, existió un problema');
            },
 
            // código a ejecutar sin importar si la petición falló o no
            complete : function(xhr, status) {
                console.log('Petición realizada');
               //location.href='#/nota_listar';
            }
        });
    };

    //select de producto para llenar json de precio
    $scope.hasChanged = function() {
        //alert($scope.selectedPrecio.precio_fabrica);
        $scope.listPrecio=[{
                id:$scope.selectedPrecio.precio_fabrica,
                value:$scope.selectedPrecio.precio_fabrica+"--Precio con factura"
            },{
                id:$scope.selectedPrecio.precio_sinFactura,
                value:$scope.selectedPrecio.precio_sinFactura+"--Precio sin factura" 
            },{
                id:$scope.selectedPrecio.precio_preventista,
                value:$scope.selectedPrecio.precio_preventista +"--Precio preventista"
            },{
                id:$scope.selectedPrecio.precio_megas,
                value:$scope.selectedPrecio.precio_megas +"--Precio megas"
            }   
        ];

        $scope.selectedPrecioSelect = $scope.listPrecio;
        $scope.notaPedidoForm.notaPedido_codigo = $scope.selectedPrecio.id_producto;
        $scope.notaPedidoForm.notaPedido_descripcion = $scope.selectedPrecio.nombre;
    };
    $scope.hasChangedPrecioSelect = function(){
        $scope.notaPedido_resultado = $scope.notaPedido_cantidadNo * $scope.selectedPrecioSelect.id;
        $scope.notaPedidoForm.notaPedido_subtotal = $scope.notaPedido_resultado;
        $scope.notaPedidoForm.notaPedido_cantidad = $scope.notaPedido_cantidadNo;
        $scope.notaPedidoForm.notaPedido_precio = $scope.selectedPrecioSelect.id;
    };
    /**funcion para responder cuando NO se marco editar precio**/
    $scope.escribePrecioNo = function(){
        $scope.notaPedido_resultado = $scope.notaPedido_cantidadNo * $scope.selectedPrecioSelect.id;
        $scope.notaPedidoForm.notaPedido_subtotal = $scope.notaPedido_resultado;
        $scope.notaPedidoForm.notaPedido_cantidad = $scope.notaPedido_cantidadNo;
        $scope.notaPedidoForm.notaPedido_precio = $scope.selectedPrecioSelect.id;
        $scope.notaPedidoForm.notaPedido_entregado = $scope.notaPedido_cantidadNo;
    };
    /**funcion para responder cuando SI se marco editar precio**/
    $scope.escribePrecioSi = function(){
        $scope.notaPedido_resultadoEdit = $scope.notaPedido_cantidadSi * $scope.notaPedido_precioEdit;
        $scope.notaPedidoForm.notaPedido_subtotal = $scope.notaPedido_resultadoEdit;
        $scope.notaPedidoForm.notaPedido_cantidad = $scope.notaPedido_cantidadSi;
        $scope.notaPedidoForm.notaPedido_precio = $scope.notaPedido_precioEdit;
        $scope.notaPedidoForm.notaPedido_entregado = $scope.notaPedido_cantidadSi;
    };

    $scope.agregarPedidoNota = function(){
        $scope.notaPedidoForm.id_nota = $(".n_numero").val();
        $scope.notaPedidoForm.notaPedido_masa = $(".notaPedido_ma").val();
        //$scope.notaPedidoForm.notaPedido_entregado = $(".notaPedido_en").val();
        //$scope.notaPedidoForm.notaPedido_entregado = $(".notaPedido_ca").val();

        if ($(".notaPedido_suEdit").val() != "0"  || $(".notaPedido_su").val() != "0") {
                //$(".carga-info").css("display", "block");
                //////////////////////////////////////////////////////////////////////
                $.ajax({
                    // la URL para la petición
                    url : 'php/nota.pedido.agregar.v2.php',
 
                    // la información a enviar
                    // (también es posible utilizar una cadena de datos)
                    data : $scope.notaPedidoForm,

                    // especifica si será una petición POST o GET
                    type : 'POST',
 
                    // el tipo de información que se espera de respuesta
                    dataType : 'json',
 
                    // código a ejecutar si la petición es satisfactoria;
                    // la respuesta es pasada como argumento a la función
                    success : function(dato) {
                        $scope.datoNotaPedidos = dato;
                        $(".notaPedido_to").val($scope.datoNotaPedidos[0].total);
                        $scope.notaPedido_total = $scope.datoNotaPedidos[0].total;
                        $scope.items = dato.length;
                        $scope.print_cantidad = $scope.datoNotaPedidos[0].print_cantidad;
                        $scope.print_masa = $scope.datoNotaPedidos[0].masa;
                        var res2 = dato[0].total.toString().split('.');
            			//var res2 = numera.toString().split('.');
            			//console.log(res2);
            			var val1 = res2[0] * 1;
            			var val2 = res2[1] * 1;
            			if (isNaN(val2)) { 
                			$scope.total_literal = Millones(val1)+' CON '+'00/100 BOLIVIANOS';
                
            			}else{
                
                			$scope.total_literal = Millones(val1)+' CON '+val2+'0/100 BOLIVIANOS';
                
            			};

                        $scope.$apply();
                    },
 
                    // código a ejecutar si la petición falla;
                    // son pasados como argumentos a la función
                    // el objeto de la petición en crudo y código de estatus de la petición
                    error : function(xhr, status) {
                        console.log('Disculpe, existió un problema');
                    },

                    // código a ejecutar sin importar si la petición falló o no
                    complete : function(xhr, status) {
                    //console.log('Petición realizada');
                        
                    }
                });
                /////////////////////////////////////////////////////////////////////
                $scope.checkboxModel.value2 = "no";
                $(".notaPedido_pr").css("display","block");
                $(".np_precioS").css("display","none");
                $(".pedido_nota_css_2").css("display","block");
                $(".notaPedido_su").css("display","none");
                $(".notaPedido_suEdit").css("display","block");

                $(".notaPedido_en").val("0");
                //$(".notaPedido_ma").val("");
                $(".notaPedido_caSi").val("");
                $(".notaPedido_caNo").val("");
                $(".notaPedido_pr").val("");
                $(".notaPedido_su").val("0");
                $(".notaPedido_suEdit").val("0");
                $(".notaPedido_caSi").css("display","block");
                $(".notaPedido_caNo").css("display","none");

                /****carga todo por defecto vacio****/   
                $scope.notaPedido_cantidadNo = "";
                $scope.notaPedido_cantidadSi = "";
                $scope.notaPedido_precioEdit = "";
                $("#id_notaPedido_productoS").focus();
                //$(".carga-info").css("display", "none");
        }else{
            $("#myModalProgramError").modal("show");
        }

    };

    //********eliminar pedido***************
    $scope.pedido_eliminar = function(a){
        //console.log(a);
        var idNota = $(".n_numero").val();
        var id_borra = a;

        //$(".carga-info").css("display", "block");
        //////////////////////////////////////////////////////////////////////
        $.ajax({
            // la URL para la petición
            url : 'php/nota.pedido.eliminar.php',
 
            // la información a enviar
            // (también es posible utilizar una cadena de datos)
            data : { codigo : id_borra ,id_nota: idNota},
 
            // especifica si será una petición POST o GET
            type : 'POST',
 
            // el tipo de información que se espera de respuesta
            dataType : 'json',
 
            // código a ejecutar si la petición es satisfactoria;
            // la respuesta es pasada como argumento a la función
            success : function(dato) {
                $scope.datoNotaPedidos = dato;
                $(".notaPedido_to").val($scope.datoNotaPedidos[0].total);  
                $scope.$apply();
                //$(".carga-info").css("display", "none");
            },
 
            // código a ejecutar si la petición falla;
            // son pasados como argumentos a la función
            // el objeto de la petición en crudo y código de estatus de la petición
            error : function(xhr, status) {
                console.log('Disculpe, existió un problema');
            },
 
            // código a ejecutar sin importar si la petición falló o no
            complete : function(xhr, status) {
                //console.log('Petición realizada');
                //location.reload(); 
                $(".notaPedido_en").val("0");
                //$(".notaPedido_ma").val("");
                $(".notaPedido_ca").val("");
                $(".notaPedido_pr").val("");
                $(".notaPedido_su").val("0");
                $(".notaPedido_suEdit").val("0");
            }
        });
        /////////////////////////////////////////////////////////////////////
    };
    //---------- AGREGAR NUEVO CLIENTE --------
    $scope.agregar_nuevoCliente = function(){
        var cliente = $(".agregar_cliente_nuevo").val();
        var clienteVector = cliente.toString().split(' ');
        var id_vendedor = $scope.selectedVendedor.id_empleado;
        var nombre_vendedor = $scope.selectedVendedor.nombre;

        console.log(cliente);
        console.log(clienteVector[0]);
        console.log(clienteVector[1]);
        console.log(id_vendedor);

        $(".carga-info").css("display", "block");
        //---ajax para llenar cliente
        //////////////////////////////////////////////////////////////////////
        $.ajax({
            // la URL para la petición
            url : 'php/agregar.nuevo.cliente.php',
 
            // la información a enviar
            // (también es posible utilizar una cadena de datos)
            data : { nombre : clienteVector[0], apellido: clienteVector[1], id_empleado: id_vendedor, nombre_empleado: nombre_vendedor},
 
            // especifica si será una petición POST o GET
            type : 'POST',
 
            // el tipo de información que se espera de respuesta
            dataType : 'json',
 
            // código a ejecutar si la petición es satisfactoria;
            // la respuesta es pasada como argumento a la función
            success : function(dato) {
                $scope.datac = {
                	availableOptionsCliente: dato
            	};
            	$scope.selectedCliente = dato;
                $scope.checkboxModelCliente.value = "no";
                $(".n_cliente").css("display","block");
                $(".crea_cliente").css("display","none");
                console.log("aplico cambio");
                $(".carga-info").css("display", "none");
                //$scope.$apply();


                /****nueva consulta de cliente****/
                //****-------ajax pra llenar cliente ///ajax para llenar el formulario de modificar nota
                $.ajax({
                    // la URL para la petición
                    url : 'php/cliente.listar.nota.php',
 
                    // la información a enviar
                    // (también es posible utilizar una cadena de datos)
                    data : { 
                        id_empleado: id_vendedor
                    },
 
                    // especifica si será una petición POST o GET
                    type : 'POST',
 
                    // el tipo de información que se espera de respuesta
                    dataType : 'json',
 
                    // código a ejecutar si la petición es satisfactoria;
                    // la respuesta es pasada como argumento a la función
                    success : function(dataUser) {
                        //console.log(dataUser);
                        $scope.datac = {
                            availableOptionsCliente: dataUser
                        };
                        $scope.selectedCliente = dataUser;
                        /*for(i=0; i<dataUser.length;i++){
                            if ( dataUser[i].id_cliente == $scope.formDataNotaModificar.id_cliente) {
                                $scope.selectedCliente = dataUser[i];
                            };
                        };*/
                        $scope.$apply();
                        $(".carga-info").css("display", "none");
                    },
 
                    // código a ejecutar si la petición falla;
                    // son pasados como argumentos a la función
                    // el objeto de la petición en crudo y código de estatus de la petición
                    error : function(xhr, status) {
                        console.log('Disculpe, existió un problema');
                    },
 
                    // código a ejecutar sin importar si la petición falló o no
                    complete : function(xhr, status) {
                        //console.log('Petición realizada');
                        //location.href='#/usuario_listar';
                        //var meses = new Array ("ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE");
                        //var f=new Date();
                        //document.write(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());   
                        //$(".n_fechaCreacion").val(f.getDate() + " - " + meses[f.getMonth()] + " - " + f.getFullYear());
                    }
                });//fin de ajax para llenar cliente
            },
 
            // código a ejecutar si la petición falla;
            // son pasados como argumentos a la función
            // el objeto de la petición en crudo y código de estatus de la petición
            error : function(xhr, status) {
                console.log('Disculpe, existió un problema');
            },
 
            // código a ejecutar sin importar si la petición falló o no
            complete : function(xhr, status) {
                //console.log('Petición realizada');
                //location.reload(); 
                //$(".notaPedido_en").val("0");
                //$(".notaPedido_ma").val("");
                //$(".notaPedido_ca").val("0");
                //$(".notaPedido_pr").val("0");
                //$(".notaPedido_su").val("0");
                //$(".notaPedido_suEdit").val("0");
            }
        });
        /////////////////////////////////////////////////////////////////////
    };

    //**-------botón volver atrás-----***
    $scope.volver = function(){
        window.history.back();       
    };
    ////-----------------GUARDAR NOTA EN BASE DE DATOS------
    $scope.modificar_nota = function(){
        $scope.formDataNota.id_usuario = sessionStorage.getItem("id_user");
        $scope.formDataNota.autorizado = sessionStorage.getItem("user");
        $scope.formDataNota.id_nota = $(".n_numero").val();
        $scope.formDataNota.fecha_creacion = $(".n_fechaCreacion").val();
        $scope.formDataNota.monto = $(".notaPedido_to").val();
        //$scope.formDataNota.tc = $(".nota_cam").val();
        //$scope.formDataNota.deposito = $(".n_deposito").val();

        //$(".carga-info").css("display", "block");
        //**********enviar para agregar*****/
        ////
        $.ajax({
            // la URL para la petición
            url : 'php/nota.modificar.php',
 
            // la información a enviar
            // (también es posible utilizar una cadena de datos)
            data : $scope.formDataNota,
 
            // especifica si será una petición POST o GET
            type : 'POST',
 
            // el tipo de información que se espera de respuesta
            dataType : 'json',
 
            // código a ejecutar si la petición es satisfactoria;
            // la respuesta es pasada como argumento a la función
            success : function(dataUser) {
                //console.log(dataUser);

                //$(".guardar_nota").css("background", "#90EE90");
                //$(".boton_cambio").removeClass("btn_super");
                $scope.$apply();
                //$(".carga-info").css("display", "none");
            },
 
            // código a ejecutar si la petición falla;
            // son pasados como argumentos a la función
            // el objeto de la petición en crudo y código de estatus de la petición
            error : function(xhr, status) {
                console.log('Disculpe, existió un problema');
            },
 
                // código a ejecutar sin importar si la petición falló o no
            complete : function(xhr, status) {
                //console.log('Petición realizada');
               //location.href='#/nota_listar';
            }
        });

    };

    ////-----------------  IMPRIMIR NOTA  ------
    $scope.print_nota = function(){
    	//preparar para guardar
    	$scope.modificar_nota();
    	
    	//reload
    	setTimeout(function() {
        	location.reload();
    	}, 2000);


    	//pareparar para impresion
    	$scope.print_now();

   
    };

    //-------   IMPRIMIR ------
    $scope.print_now = function(){
    	window.print();
    };


    //salvar nota
    $scope.save = function(){
    	$scope.modificar_nota();
    };

});