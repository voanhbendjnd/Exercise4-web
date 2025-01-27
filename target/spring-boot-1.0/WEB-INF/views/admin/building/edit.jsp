<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 22/01/2025
  Time: 11:55 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var = "buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Name Building</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check("breadcrumbs", "fixed");
                } catch (e) {}
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul>
            <!-- /.breadcrumb -->
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>Update Building</h1>
            </div>
            <!-- /.page-header -->
            <div class="row">

                <div class="col-xs-12">
                    <div class="widget-body">
                        <div class="widget-main">
                            <div class="row">
                                <form:form modelAttribute="buildingEdit" id = "listForm" method ="GET">
                                    <div class="col-xs-12">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-xs-3"> Name Building </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            class="from-control input-lg"
                                                            path = "name"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> District </label>

                                                <div class="col-xs-3">
                                                   <form:select path = "district">
                                                       <form:option value = "">---Select District---</form:option>
                                                       <form:options items = "${districts}"/>
                                                   </form:select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Ward </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "ward"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3">Street</label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "street"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Structure </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "structure"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Number of Basement </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "numberOfBasement"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Floor Area </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "floorArea"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Direction </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "direction"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Level </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "level"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Rent Area </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "rentArea"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Rent Price </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "rentPrice"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3">
                                                    Rent Price Description
                                                </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "rentPriceDescription"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Service Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "serviceFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Car Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "carFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Motorbike Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "motoFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Overtime Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "overtimeFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3">Water Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "waterFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3">Electricity Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "electricityFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Deposit </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "deposit"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Payment </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "payment"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Rent Time </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "rentTime"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-xs-3"> Decoration Time </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "decorationTime"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Manager Name </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "managerName"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Manager Phone Number </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "managerPhone"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Broker Age Fee </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "brokerageFee"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <form:checkboxes path="typeCode" items="${typeCodes}"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3"> Note </label>

                                                <div class="col-xs-9">
                                                    <form:input
                                                            path = "note"
                                                            class="from-control input-lg"
                                                            style="width: 100%"
                                                    />
                                                </div>
                                            </div>
                                            <form:hidden path="id" id = "buildingId"/>
                                        </form>
                                    </div>
                                </form:form>

                            </div>
                        </div>
                    </div>
                    <!-- button -->
                    <div class="col-xs-12">
                        <div class="col-xs-3"></div>
                        <div class="col-xs-9">
                            <c:if test = "${not empty buildingEdit.id}">
                                <button class="btn btn-success" id="btnAddOrUpdateBuilding">
                                    Update Building
                                </button>
                                <button class="btn btn-danger" id = "btnCancelBuilding">Cancel Building</button>
                            </c:if>
                            <c:if test = "${empty buildingEdit.id}">
                                <button class="btn btn-success" id="btnAddOrUpdateBuilding">
                                    Add/Update Building
                                </button>
                                <button class="btn btn-danger" id = "btnCancelBuilding">Cancel Building</button>
                            </c:if>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- List table -->

        <!-- /.page-content -->
    </div>

    <!-- /.main-content -->



    <a
            href="#"
            id="btn-scroll-up"
            class="btn-scroll-up btn btn-sm btn-inverse"
    >
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<!-- /.main-container -->
<!--[if !IE]> -->
<script src="assets/js/jquery.2.1.1.min.js"></script>
<script>
    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];
        var fromData = $('#listForm').serializeArray(); // chuyển thành mảng có đối tượng data và typecode mỗi đối tượng có thuộc tính name và value
        $.each(fromData, function (i, field) {
            data[field.name] = field.value;
            if (field.name != "typeCode") {
                data["" + field.name + ""] = field.value; // nếu không phải type code thì sẽ được gánvà data
            } else {
                typeCode.push(field.value); // la typecode thì gán vào typecode
            }
        });
        data["typeCode"] = typeCode;
        // them hay sua deu phai co loai toa nha
        if(typeCode != ""){
            addOrUpdateBuilding(data);
        }
        else{
            window.location.href = "<c:url value = "/admin/building-edit?typeCode=required"/>";
        }
    });


    function addOrUpdateBuilding(data){
        $.ajax({
            url: "${buildingAPI}",
            type: "POST",
            data: JSON.stringify(data), // chuyển data thành kiểu json
            contentType: "application/json", // định dạng lại kiểu dữ liệu
            dataType: "JSON",
            success: function (respond) {
                //cái mà sẽ trả ra
                console.log("Success");
            },
            error: function (respond) {
                console.log("fail");
                console.log(respond);
            },
        });
    }



    $('#btnCancelBuilding').click(function () {
       window.location.href = "/admin/building-list";
    });
    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val();
    }

    // ngoac don
    $('#btnassignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
    });
</script>

<!-- <![endif]-->
</body>
</html>
