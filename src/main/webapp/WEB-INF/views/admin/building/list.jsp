<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="buildingListURL" value="/admin/building-list"/>

<html>
<head>
    <title>Building List</title>
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
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>
                    Dashboard
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box ui-sortable-handle">
                        <div class="widget-header">
                            <h5 class="widget-title">Find Building</h5>
                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div class="widget-main">
                                <form:form id="listForm" modelAttribute="modelSearch" method="GET" action="${buildingListURL}">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="col-sm-6">
                                                    <label class="name">Name Building</label>
                                                    <form:input path="name" class="form-control"/>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label class="name">Floor Area</label>
                                                    <form:input path="floorArea" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>


                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <label class="name">District</label>
                                                <form:select path="district" class="form-control">
                                                    <form:option value="">---Select District---</form:option>
                                                    <form:option value="Quan 1">District 1</form:option>
                                                    <form:option value="Quan 2">District 2</form:option>
                                                    <form:option value="Quan 3">District 3</form:option>
                                                    <form:option value="Quan 4">District 4</form:option>
                                                </form:select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Ward</label>
                                                <form:input path="ward" class="form-control"/>
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Street</label>
                                                <form:input path="street" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-4">
                                                <label class="name">Number of Basement</label>
                                                <form:input path="numberOfBasement" class="form-control"/>
                                            </div>
                                            <div class="col-xs-4">
                                                <label class="name">Direction</label>
                                                <form:input path="direction" class="form-control"/>
                                            </div>
                                            <div class="col-xs-4">
                                                <label class="name">Level</label>
                                                <form:input path="level" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-3">
                                                <label class="name">Rent Area From</label>
                                                <form:input path="areaFrom" class="form-control"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Rent Area To</label>
                                                <form:input path="areaTo" class="form-control"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Rent Price From</label>
                                                <form:input path="rentPriceFrom" class="form-control"/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Rent Price To</label>
                                                <form:input path="rentPriceTo" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-5">
                                                <label class="name">Manager Name</label>
                                                <form:input path="managerName" class="form-control"/>
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Manager Phone Number</label>
                                                <form:input path="managerPhone" class="form-control"/>
                                            </div>
                                            <div class="col-xs-2">
                                                <label class="name">Staff</label>
                                                <form:select path="staffId" class="form-control">
                                                    <form:option value="">---Select Staff---</form:option>
                                                    <form:option value="1">Brother A</form:option>
                                                    <form:option value="2">Sister B</form:option>
                                                    <form:option value="3">Young Sister C</form:option>
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <label>
                                                    <form:checkbox path="typeCode" value="noi-that"/> Interior
                                                </label>
                                                <label>
                                                    <form:checkbox path="typeCode" value="nguyen-can"/> FullFull
                                                </label>
                                                <label>
                                                    <form:checkbox path="typeCode" value="tang-tret"/> Ground Floor
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <button class="btn btn-success" id="btnSearchBuilding">Find</button>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="pull-right">
                <a href="/admin/building-edit">
                <button class="btn btn-secondary" title="Add Building">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"></path>
                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                        <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                    </svg>
                </button>
                </a>

                <button class="btn btn-danger" title="Delete Building">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"></path>
                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                        <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                    </svg>
                </button>

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="clearfix">
                        <div class="pull-right tableTools-container">
                            <div class="btn-group btn-overlap">
                                <div class="ColVis btn-group" title="" data-original-title="Show/hide columns"></div>
                            </div>
                        </div>
                    </div>
                    <div class="table-header"></div>
                    <div>
                        <div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="dataTables_length" id="dynamic-table_length"></div>
                                </div>
                                <div class="col-xs-6">
                                    <div id="dynamic-table_filter" class="dataTables_filter"></div>
                                </div>
                            </div>
                            <table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer DTTT_selectable" role="grid" aria-describedby="dynamic-table_info">
                                <thead>
                                <tr role="row">
                                    <th class="center sorting_disabled" rowspan="1" colspan="1" aria-label="">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" name="checkList" value="">
                                            <span class="lbl"></span>
                                        </label>
                                    </th>
                                    <th>Name Building</th>
                                    <th>Address</th>
                                    <th>Number of Basement</th>
                                    <th>Manager Name</th>
                                    <th>Manager Phone Number</th>
                                    <th>Floor Area</th>
                                    <th>Empty Area</th>
                                    <th>Rental Area</th>
                                    <th>Fee</th>
                                    <th>Operation</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${buildingList}">
                                    <tr>
                                        <td class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                                                <span class="lbl"></span>
                                            </label>
                                        </td>
                                        <td>${item.name}</td>
                                        <td>${item.address}</td>
                                        <td>${item.numberOfBasement}</td>
                                        <td>${item.managerName}</td>
                                        <td>${item.managerPhone}</td>
                                        <td>${item.floorArea}</td>
                                        <td>${item.emptyArea}</td>
                                        <td>${item.rentArea}</td>
                                        <td>${item.serviceFee}</td>
                                        <td>
                                            <div class = "hidden-sm hidden-xs btn-group">
                                                <button class = "btn btn-xs btn-success" title = "Transfer Building" onclick="assignmentBuilding(${item.id})">
                                                    <i class = "ace-icon glyphicon glyphicon-list"></i>
                                                </button>
                                                <a class="btn btn-xs btn-info" title = "Update Building" href="/admin/building-edit-${item.id}">
                                                    <i class = "ace-icon fa fa-pencil bigger-120"></i>
                                                </a>
                                                <button class = "btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="dataTables_info" id="dynamic-table_info" role="status" aria-live="polite">Showing 1 to 10 of 23 entries</div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">
                                        <ul class="pagination">
                                            <li class="paginate_button previous disabled" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_previous"><a href="#">Previous</a></li>
                                            <li class="paginate_button active" aria-controls="dynamic-table" tabindex="0"><a href="#">1</a></li>
                                            <li class="paginate_button" aria-controls="dynamic-table" tabindex="0"><a href="#">2</a></li>
                                            <li class="paginate_button" aria-controls="dynamic-table" tabindex="0"><a href="#">3</a></li>
                                            <li class="paginate_button next" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_next"><a href="#">Next</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog">
    <div class="modal-dialog modal-lg"> <!-- Sử dụng modal-lg cho modal lớn -->
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Staff List</h4>
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                    <table id="stafflist" class="table table-striped table-bordered table-hover">
                        <thead class="thead-dark">
                        <tr>
                            <th>Select</th>
                            <th>Staff Name</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="center">
                                <input type="checkbox" id="checkbox_1" value="1">
                            </td>
                            <td>Brother Gang</td>
                        </tr>
                        <tr>
                            <td class="center">
                                <input type="checkbox" id="checkbox_2" value="2">
                            </td>
                            <td>Sister Linda</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <input type="hidden" id="buildingId" name="building" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnassignmentBuilding">Transfer Building</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery.2.1.1.min.js"></script>
<script>
    function assignmentBuilding(id) {
        $('#assignmentBuildingModal').modal('show');
        $('#buildingId').val();
    }
    $('#btnassignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
    });
    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    });
</script>

</body>
</html>