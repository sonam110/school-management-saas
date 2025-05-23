
   
<?php $__env->startSection('content'); ?>
<div class="row ins-two">
  <div class="col-md-8 col-md-offset-2">
    <div class="card">
      <div class="card-body">
        <div class="panel panel-default ins-three" data-collapsed="0">
          <!-- panel body -->
          <div class="panel-body ins-four">
            <center>
              <i class="entypo-thumbs-up ins-five"></i>
              <h3><?php echo e(phrase('Congratulations!! The installation was successfull')); ?></h3>
            </center>
            <br>
            <center>
              <strong>
                <?php echo e(phrase("Before you start using your application, make it yours. Set your application name and title, admin login email and
                password. Remember the login credentials which you will need later on for signing into your account. After this step,
                you will be redirected to application's login page.")); ?>

              </strong>
            </center>
            <br>
            <div class="row">
              <div class="col-md-12">
                <form class="form-horizontal form-groups" method="post"
                  action="<?php echo e(route('finalizing_setup')); ?>">
                  <?php echo csrf_field(); ?> 
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('Academic Session')); ?></label>
            				<div class="col-sm-5">
            					<input type="text" class="form-control eForm-control" name="current_session" placeholder="Ex: 2023"
                        required autofocus>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Current Academic Session Example: 2023')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('System Name')); ?></label>
            				<div class="col-sm-5">
            					<input type="text" class="form-control eForm-control" name="system_name" placeholder="Ekattor School Manager"
                        required autofocus>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('The name of your application')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('Superadmin Name')); ?></label>
            				<div class="col-sm-5">
            					<input type="text" class="form-control eForm-control" name="superadmin_name" placeholder="Ex: John Doe" required>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Full name of Administrator')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('Superadmin Email')); ?></label>
            				<div class="col-sm-5">
            					<input type="email" class="form-control eForm-control" name="superadmin_email" placeholder="Ex: john@example.com" required>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Email address for administrator login')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('Password')); ?></label>
            				<div class="col-sm-5">
            					<input type="password" class="form-control eForm-control" name="superadmin_password" placeholder=""
                        required>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Superadmin login password')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo e(phrase('Superadmin Address')); ?></label>
                    <div class="col-sm-5">
                      <input type="text" class="form-control eForm-control" name="superadmin_address" placeholder="Ex: Your Address" required>
                    </div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Address of Administrator')); ?>

                    </div>
                  </div>
                  <hr>
                  <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo e(phrase('Superadmin Phone')); ?></label>
                    <div class="col-sm-5">
                      <input type="number" class="form-control eForm-control" name="superadmin_phone" placeholder="Ex: +9020040060" required>
                    </div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Phone of Administrator')); ?>

                    </div>
                  </div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"><?php echo e(phrase('TimeZone')); ?></label>
            				<div class="col-sm-5">
                      <select class="form-select eForm-select eChoice-multiple-with-remove" id="timezone" name="timezone">
                        <?php $tzlist = DateTimeZone::listIdentifiers(DateTimeZone::ALL); ?>
                        <?php foreach ($tzlist as $tz): ?>
                          <option value="<?php echo e($tz); ?>" <?php echo e($tz == 'Asia/Dhaka' ?  'selected':''); ?>><?php echo e($tz); ?></option>
                        <?php endforeach; ?>
                      </select>
            				</div>
                    <div class="col-sm-4 ins-six">
                      <?php echo e(phrase('Choose System TimeZone')); ?>

                    </div>
            			</div>
                  <hr>
                  <div class="form-group">
            				<label class="col-sm-3 control-label"></label>
            				<div class="col-sm-7">
            					<button type="submit" class="btn btn-info"><?php echo e(phrase('Set me up')); ?></button>
            				</div>
            			</div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('install.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\ekattor\resources\views/install/finalizing_setup.blade.php ENDPATH**/ ?>