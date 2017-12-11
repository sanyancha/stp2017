<footer class="container-fluid text-center background-element ndra-container" id="foot">
    <br>

    <p class="style-text"> <a href="/join-courses">Join course
    </a> | <a href="/leave-courses">Leave course</a> | <a href="#" onclick="balanceOperation('+')">Add balance</a> | <a href="/">Sign out</a> </p>
    <p class="style-text">© ${nowYear} RelaxLaboratory.com | All rights reserved | Contact number <span class="glyphicon glyphicon-phone-alt"></span> 42-78-58</p>
</footer>

<div id="success-operation1" class="modal fade" role="dialog" style="margin-top: 15%;">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">&nbsp;Success operation</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div><h3 class="col-sm-10" style="color: green; text-align: center">Operation was successful!</h3>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
                <br/>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        $("#success-operation1").on('hidden.bs.modal',function (e) {
            document.location.reload(true);
        });

    });

</script>


<div id="balance-operation" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="balance-header">&nbsp;Balance operation</h4>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <p id="balance-modal-err" style="color: red; text-align: center"></p>
                    </div>
                    <div class="col-sm-1"></div>
                </div>

                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <span class="addon-user input-group-addon" for="shest">Card number</span>
                            <input id="shest" type="text" class="creditno form-control" name="shest"
                                   placeholder="**** **** **** ****" onkeypress="return checkDigit(event)">
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>

                <br/>

                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <span class="addon-user input-group-addon" id="balance-input" for="balance-input-data"></span>
                            <input id="balance-input-data" type="text" name="balance-input-data" class="float form-control"
                                   placeholder="Amount of money">
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>

                <br/>

                <div class="modal-footer">
                    <button type="button " class="btn btn-default" onclick="balanceOperationServer()">Submit</button>
                    <button type="button" class="btn btn-default" onclick="closeModal('#balance-operation')">Close
                    </button>
                </div>

                <br/>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.creditno').keyup(function() {
            cc = cc_format($(this).val());

            $(this).val(cc);
        });

        $('input.float').on('input', function() {
            this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');

            var firstNum = parseInt(this.value);
            var secondNum = this.value.replace(firstNum+'.','');

            if(parseInt(secondNum) > 3 && firstNum != secondNum)
            {
                this.value = parseFloat(this.value).toFixed(2);
            }
        });
    });
</script>