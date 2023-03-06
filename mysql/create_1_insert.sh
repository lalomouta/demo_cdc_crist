#!/usr/bin/env bash

FICHERO_SALIDA="/app/INSERT_1_registro.sql"

#Inicializamos el fichero de salida
cat /dev/null > $FICHERO_SALIDA

#Borramos la tabla
echo "DELETE FROM cris2.cr_th_activo;" >> $FICHERO_SALIDA

# Generamos valores arbitrarios
O5625_ID_UNIT=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_AREA=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_CARTERA=`echo $RANDOM | md5sum | head -c 10`
O5625_FEC_DATO="current_date()"
O5625_ID_ISS_CTRY=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_COUNT_PT=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_UNDERLY=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_ASSETCL=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_BAL_SH_IT=`echo $RANDOM | md5sum | head -c 20`
O5625_ID_CURRENCY=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_SEGMENT=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_PRODUCT=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_SCENARIO=`echo $RANDOM | md5sum | head -c 20`
O5625_ID_FACT_TYPE=`echo $RANDOM | md5sum | head -c 20`
O5625_ID_SOV_RSK=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_TYPE_FVA=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_CURVE=`echo $RANDOM | md5sum | head -c 20`
O5625_ID_TB_ORIG=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_TIME_BUCK=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_AST_LIAB=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_FX_POS=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_METRICA=`echo $RANDOM | head -c 3`
O5625_ID_TIP_CALC=`echo $RANDOM | head -c 3`
O5625_COMENTARIO=`echo $RANDOM | md5sum | head -c 10`
O5625_ESTADO_MET=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_USUARIO=`echo $RANDOM | md5sum | head -c 10`
O5625_FEC_CARGA="current_date()"
O5625_VAL_MET_EUR=`echo $RANDOM | head -c 3`
O5625_VAL_MET_ORIG=`echo $RANDOM | head -c 3`
O5625_IND_AJUSTE=`echo $RANDOM | md5sum | head -c 1`
O5625_IND_TIP_CARG=`echo $RANDOM | head -c 1`
O5625_ID_DIV_CARGA=`echo $RANDOM | md5sum | head -c 3`
O5625_IND_EST_REV=`echo $RANDOM | head -c 3`
O5625_ID_CAUSA_AJ=`echo $RANDOM | head -c 3`
O5625_ORIGEN_MET=`echo $RANDOM | md5sum | head -c 20`
O5625_ID_T_ISSUER=`echo $RANDOM | md5sum | head -c 10`
O5625_ID_INTRAGR=`echo $RANDOM | md5sum | head -c 10`
O5625_FEC_REAL_DATO="current_date()"
O5625_IND_COPIADO=`echo $RANDOM | head -c 1`
O5625_VAL_MET_ORIG_OF=`echo $RANDOM | head -c 3`
O5625_VAL_MET_EUR_OF=`echo $RANDOM | head -c 3`
O5625_ID_DIV_CARGA_OF=`echo $RANDOM | md5sum | head -c 3`	

#echo "insert into users (id,name,email,mobile_number,created_at) values ("$id", '"$name"', '"$email"', '"$mobile_number"', "$created_at");" >> output.sql
echo "insert into cris2.cr_th_activo(O5625_ID_UNIT, O5625_ID_AREA, O5625_ID_CARTERA, O5625_FEC_DATO, O5625_ID_ISS_CTRY, O5625_ID_COUNT_PT, O5625_ID_UNDERLY, O5625_ID_ASSETCL, O5625_ID_BAL_SH_IT, O5625_ID_CURRENCY, O5625_ID_SEGMENT, O5625_ID_PRODUCT, O5625_ID_SCENARIO, O5625_ID_FACT_TYPE, O5625_ID_SOV_RSK, O5625_ID_TYPE_FVA, O5625_ID_CURVE, O5625_ID_TB_ORIG, O5625_ID_TIME_BUCK, O5625_ID_AST_LIAB, O5625_ID_FX_POS, O5625_ID_METRICA, O5625_ID_TIP_CALC, O5625_COMENTARIO, O5625_ESTADO_MET, O5625_ID_USUARIO, O5625_FEC_CARGA, O5625_VAL_MET_EUR, O5625_VAL_MET_ORIG, O5625_IND_AJUSTE, O5625_IND_TIP_CARG, O5625_ID_DIV_CARGA, O5625_IND_EST_REV, O5625_ID_CAUSA_AJ, O5625_ORIGEN_MET, O5625_ID_T_ISSUER, O5625_ID_INTRAGR, O5625_FEC_REAL_DATO, O5625_IND_COPIADO, O5625_VAL_MET_ORIG_OF, O5625_VAL_MET_EUR_OF, O5625_ID_DIV_CARGA_OF) values ('"$O5625_ID_UNIT"', '"$O5625_ID_AREA"', '"$O5625_ID_CARTERA"', "$O5625_FEC_DATO", '"$O5625_ID_ISS_CTRY"', '"$O5625_ID_COUNT_PT"', '"$O5625_ID_UNDERLY"', '"$O5625_ID_ASSETCL"', '"$O5625_ID_BAL_SH_IT"', '"$O5625_ID_CURRENCY"', '"$O5625_ID_SEGMENT"', '"$O5625_ID_PRODUCT"', '"$O5625_ID_SCENARIO"', '"$O5625_ID_FACT_TYPE"', '"$O5625_ID_SOV_RSK"', '"$O5625_ID_TYPE_FVA"', '"$O5625_ID_CURVE"', '"$O5625_ID_TB_ORIG"', '"$O5625_ID_TIME_BUCK"', '"$O5625_ID_AST_LIAB"', '"$O5625_ID_FX_POS"', "$O5625_ID_METRICA", "$O5625_ID_TIP_CALC", '"$O5625_COMENTARIO"', '"$O5625_ESTADO_MET"', '"$O5625_ID_USUARIO"', "$O5625_FEC_CARGA", "$O5625_VAL_MET_EUR", "$O5625_VAL_MET_ORIG", '"$O5625_IND_AJUSTE"', "$O5625_IND_TIP_CARG", '"$O5625_ID_DIV_CARGA"', "$O5625_IND_EST_REV", "$O5625_ID_CAUSA_AJ", '"$O5625_ORIGEN_MET"', '"$O5625_ID_T_ISSUER"', '"$O5625_ID_INTRAGR"', "$O5625_FEC_REAL_DATO", "$O5625_IND_COPIADO", "$O5625_VAL_MET_ORIG_OF", "$O5625_VAL_MET_EUR_OF", '"$O5625_ID_DIV_CARGA_OF"');" >> $FICHERO_SALIDA

chmod +rx $FICHERO_SALIDA
