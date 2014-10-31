<?php

$user_info = $this->crud_model->get_users_info($current_user_id);

foreach ($user_info as $row):?>

    <center>

        <div class="box">

            <div class="">

                <div class="title">

                    <div
                        style="float:left;width:370px;height:147px;text-align:left;position:relative; margin-bottom:20px;">

                        <div class="avatar" style="position:absolute;bottom:0px;left:20px;">

                            <img src="<?php echo $this->crud_model->get_image_url('hs_users', $row['user_id']); ?>"

                                 class="avatar-big" style="max-height:130px;max-width:130px;"/>

                        </div>

                        <div style="position:absolute; bottom:10px;left:150px;">

                            <h3 style=" color:#666;font-weight:100;"><?php echo $row['name']; ?> <?php echo $row['snombre']; ?> <?php echo $row['papellido']; ?> <?php echo $row['sapellido']; ?></h3>

                        </div>

                    </div>

                </div>

            </div>

            <br/>

            <table class="table table-normal ">


			<?php if ($row['rol'] != ''): ?>

                    <tr>

                        <td>Rol del Usuario</td>

                        <td><b><?php echo $this->crud_model->get_rol_name($row['rol']); ?></b></td>

                    </tr>

                <?php endif; ?>



                <?php if ($row['sex'] != ''): ?>

                    <tr>

                        <td>Sexo</td>

                        <td><b><?php echo $row['sex']; ?></b></td>

                    </tr>

                <?php endif; ?>





                <?php if ($row['phone'] != ''): ?>

                    <tr>

                        <td>Telefono de contacto</td>

                        <td><b><?php echo $row['phone']; ?></b></td>

                    </tr>

                <?php endif; ?>



                <?php if ($row['email'] != ''): ?>

                    <tr>

                        <td>Email</td>

                        <td><b><?php echo $row['email']; ?></b></td>

                    </tr>

                <?php endif; ?>


                <?php if ($row['address'] != ''): ?>

                    <tr>

                        <td style="vertical-align:top;">Direccion</td>

                        <td><b><?php echo $row['address']; ?></b>


                        </td>

                    </tr>

                <?php endif; ?>


            </table>

        </div>

    </center>

<?php endforeach; ?>

