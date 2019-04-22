function copy_files {
  # /data/misc/riru/modules/template exists -> libriru_template.so will be loaded
  # Change "template" to your module name
  # You can also use this folder as your config folder
  NAME="xfingerprint_pay_taobao"
  mkdir -p $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME
  cp $MODULE_NAME/template_override/riru_module.prop $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME/module.prop

  cp $MODULE_NAME/template_override/config.sh $TMP_DIR_MAGISK
  cp $MODULE_NAME/template_override/module.prop $TMP_DIR_MAGISK

  mkdir -p $TMP_DIR_MAGISK/system/framework
  
  7za e -o$TMP_DIR_MAGISK/system/framework/ $MODULE_NAME/libs/fingerprint-pay-taobao-magisk.apk classes.dex
  mv -f $TMP_DIR_MAGISK/system/framework/classes.dex $TMP_DIR_MAGISK/system/framework/libxfingerprint_pay_taobao.dex
}