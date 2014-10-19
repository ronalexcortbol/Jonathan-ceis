<div class="tab-pane box active" id="edit" style="padding: 5px">

                <div class="box-content">

                	<?php foreach($edit_data as $row):?>

                    <?php echo form_open('admin/teacher/do_update/'.$row['teacher_id'] , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>

                        <div class="padded">

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('name');?></label>

                                <div class="controls">

                                    <input type="text" class="validate[required]" name="name" value="<?php echo $row['name'];?>"/>

                                </div> </div>
                                    <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('segundo_nombre');?></label>

                                <div class="controls">

                                    <input type="text"  name="snombre" value="<?php echo $row['snombre'];?>"/>

                                </div>

                           

                            </div>
                                 <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('Primer_apellido');?></label>

                                <div class="controls">

                                    <input type="text" class="validate[required]" name="papellido" value="<?php echo $row['papellido'];?>"/>

                                </div>

                            </div>
                                 <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('segundo_apellido');?></label>

                                <div class="controls">

                                    <input type="text" class="validate[required]" name="sapellido" value="<?php echo $row['sapellido'];?>"/>

                                </div>

                            </div>
                             

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('birthday');?></label>

                                <div class="controls">

                                    <input type="text" class="datepicker fill-up" name="birthday" value="<?php echo $row['birthday'];?>"/>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('sex');?></label>

                                <div class="controls">

                                    <select name="sex" class="uniform" style="width:100%;">

                                    	<option value="male" <?php if($row['sex'] == 'male')echo 'selected';?>><?php echo get_phrase('male');?></option>

                                    	<option value="female" <?php if($row['sex'] == 'female')echo 'selected';?>><?php echo get_phrase('female');?></option>

                                    </select>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('address');?></label>

                                <div class="controls">

                                    <input type="text" class="" name="address" value="<?php echo $row['address'];?>"/>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('phone');?></label>

                                <div class="controls">

                                    <input type="text" class="" name="phone" value="<?php echo $row['phone'];?>"/>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('email');?></label>

                                <div class="controls">

                                    <input type="text" class="" name="email" value="<?php echo $row['email'];?>"/>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('password');?></label>

                                <div class="controls">

                                    <input type="text" class="" name="password" value="<?php echo $row['password'];?>"/>

                                </div>

                            </div>

                            

                            <div class="control-group">

                                <label class="control-label"><?php echo get_phrase('photo');?></label>

                                <div class="controls" style="width:210px;">

                                    <input type="file" class="" name="userfile" id="imgInp" />

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label"></label>

                                <div class="controls" style="width:210px;">

                                    <img id="blah" src="<?php echo $this->crud_model->get_image_url('teacher',$row['teacher_id']);?>" alt="your image" height="100" />

                                </div>

                            </div>

                        </div>

                        <div class="form-actions">

                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('edit_teacher');?></button>

                        </div>

                    </form>

                    <?php endforeach;?>

                </div>

			</div>