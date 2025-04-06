rm svn-usage/  workdir/ -rf
svnadmin create svn-usage
cd svn-usage
# bash solve_svn.sh && cd workdir/ && svn log && cd ..

export BASE_PATH="file:///home/user/Desktop/gitsvn/svn/svn-usage"
export COMMITS_PATH="/home/user/Desktop/gitsvn/commits"

#создаём структуру проекта
svn mkdir -m "project structure" $BASE_PATH/trunk $BASE_PATH/branches
cd ..

#создаём рабочую копию
svn checkout $BASE_PATH/trunk workdir
cd workdir

cp $COMMITS_PATH/commit0/* .
svn add *
svn commit -m "r0" --username="red"

export USERNAME="blue"
svn copy ^/trunk ^/branches/branch2 -m "r1: created branch2" --username=$USERNAME
svn switch ^/branches/branch2
rm *
cp $COMMITS_PATH/commit1/* .
svn add *
svn commit -m "r1" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch2 ^/branches/branch3 -m "r2: created branch3" --username=$USERNAME
svn switch ^/branches/branch3
rm *
cp $COMMITS_PATH/commit2/* .
svn add *
svn commit -m "r2" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch3 ^/branches/branch4 -m "r3: created branch4" --username=$USERNAME
svn switch ^/branches/branch4
rm *
cp $COMMITS_PATH/commit3/* .
svn add *
svn commit -m "r3" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch4 ^/branches/branch5 -m "r4: created branch5" --username=$USERNAME
svn switch ^/branches/branch5
rm *
cp $COMMITS_PATH/commit4/* .
svn add *
svn commit -m "r4" --username=$USERNAME

export USERNAME="red"
svn switch ^/trunk
rm *
cp $COMMITS_PATH/commit5/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r5" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch3
rm *
cp $COMMITS_PATH/commit6/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r6" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch3 ^/branches/branch6 -m "r7: created branch6" --username=$USERNAME
svn switch ^/branches/branch6
rm *
cp $COMMITS_PATH/commit7/* .
svn add *
svn commit -m "r7" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch6 ^/branches/branch7 -m "r8: created branch7" --username=$USERNAME
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit8/* .
svn add *
svn commit -m "r8" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch7 ^/branches/branch8 -m "r9: created branch8" --username=$USERNAME
svn switch ^/branches/branch8
rm *
cp $COMMITS_PATH/commit9/* .
svn add *
svn commit -m "r9" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch5
rm *
cp $COMMITS_PATH/commit10/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r10" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit11/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r11" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch7 ^/branches/branch9 -m "r12: created branch9" --username=$USERNAME
svn switch ^/branches/branch9
rm *
cp $COMMITS_PATH/commit12/* .
svn add *
svn commit -m "r12" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch9 ^/branches/branch10 -m "r13: created branch10" --username=$USERNAME
svn switch ^/branches/branch10
rm *
cp $COMMITS_PATH/commit13/* .
svn add *
svn commit -m "r13" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch10 ^/branches/branch11 -m "r14: created branch11" --username=$USERNAME
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit14/* .
svn add *
svn commit -m "r14" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit15/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r15" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch7 ^/branches/branch12 -m "r16: created branch12" --username=$USERNAME
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit16/* .
svn add *
svn commit -m "r16" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit17/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r17" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch11 ^/branches/branch13 -m "r18: created branch13" --username=$USERNAME
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit18/* .
svn add *
svn commit -m "r18" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch13 ^/branches/branch14 -m "r19: created branch14" --username=$USERNAME
svn switch ^/branches/branch14
rm *
cp $COMMITS_PATH/commit19/* .
svn add *
svn commit -m "r19" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit20/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r20" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit21/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r21" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit22/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r22" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch13 ^/branches/branch15 -m "r23: created branch15" --username=$USERNAME
svn switch ^/branches/branch15
rm *
cp $COMMITS_PATH/commit23/* .
svn add *
svn commit -m "r23" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch15 ^/branches/branch16 -m "r24: created branch16" --username=$USERNAME
svn switch ^/branches/branch16
rm *
cp $COMMITS_PATH/commit24/* .
svn add *
svn commit -m "r24" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch8
rm *
cp $COMMITS_PATH/commit25/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r25" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit26/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r26" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch15
rm *
cp $COMMITS_PATH/commit27/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r27" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch15 ^/branches/branch17 -m "r28: created branch17" --username=$USERNAME
svn switch ^/branches/branch17
rm *
cp $COMMITS_PATH/commit28/* .
svn add *
svn commit -m "r28" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit29/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r29" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit30/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r30" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch9
rm *
cp $COMMITS_PATH/commit31/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r31" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch9 ^/branches/branch18 -m "r32: created branch18" --username=$USERNAME
svn switch ^/branches/branch18
rm *
cp $COMMITS_PATH/commit32/* .
svn add *
svn commit -m "r32" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit33/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r33" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit34/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r34" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch9
rm *
cp $COMMITS_PATH/commit35/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r35" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch18
rm *
cp $COMMITS_PATH/commit36/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r36" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch16
rm *
cp $COMMITS_PATH/commit37/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r37" --username=$USERNAME

export USERNAME="blue"
svn copy ^/branches/branch16 ^/branches/branch19 -m "r38: created branch19" --username=$USERNAME
svn switch ^/branches/branch19
rm *
cp $COMMITS_PATH/commit38/* .
svn add *
svn commit -m "r38" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit39/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r39" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch16
rm *
cp $COMMITS_PATH/commit40/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r40" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit41/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r41" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch9
rm *
cp $COMMITS_PATH/commit42/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r42" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit43/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r43" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit44/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r44" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit45/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r45" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit46/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r46" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit47/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r47" --username=$USERNAME

export USERNAME="red"
svn switch ^/trunk
rm *
cp $COMMITS_PATH/commit48/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r48" --username=$USERNAME

export USERNAME="blue"
svn copy ^/trunk ^/branches/branch20 -m "r49: created branch20" --username=$USERNAME
svn switch ^/branches/branch20
rm *
cp $COMMITS_PATH/commit49/* .
svn add *
svn commit -m "r49" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch6
rm *
cp $COMMITS_PATH/commit50/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r50" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch12
rm *
cp $COMMITS_PATH/commit51/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r51" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch15
rm *
cp $COMMITS_PATH/commit52/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r52" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch3
rm *
cp $COMMITS_PATH/commit53/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r53" --username=$USERNAME

export USERNAME="red"
svn copy ^/branches/branch3 ^/branches/branch21 -m "r54: created branch21" --username=$USERNAME
svn switch ^/branches/branch21
rm *
cp $COMMITS_PATH/commit54/* .
svn add *
svn commit -m "r54" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch8
rm *
cp $COMMITS_PATH/commit55/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r55" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
svn merge ^/branches/branch8
rm *
cp $COMMITS_PATH/commit56/* .
svn add *
svn commit -m "r56" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch20
rm *
cp $COMMITS_PATH/commit57/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r57" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch2
rm *
cp $COMMITS_PATH/commit58/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r58" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit59/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r59" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch4
rm *
cp $COMMITS_PATH/commit60/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r60" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch17
rm *
cp $COMMITS_PATH/commit61/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r61" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch18
rm *
cp $COMMITS_PATH/commit62/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r62" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch18
rm *
cp $COMMITS_PATH/commit63/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r63" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch9
svn merge ^/branches/branch18
rm *
cp $COMMITS_PATH/commit64/* .
svn add *
svn commit -m "r64" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch5
svn merge ^/branches/branch9
rm *
cp $COMMITS_PATH/commit65/* .
svn rm QboT8jLSLs.Tcc
svn add *
svn commit -m "r65" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch2
rm *
cp $COMMITS_PATH/commit66/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r66" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch14
rm *
cp $COMMITS_PATH/commit67/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r67" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch20
rm *
cp $COMMITS_PATH/commit68/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r68" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch19
rm *
cp $COMMITS_PATH/commit69/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r69" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit70/* .
svn add *
svn commit -m "r70" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch5
rm *
cp $COMMITS_PATH/commit71/* .
svn rm H3B7TccQbo.dU4
svn add *
svn commit -m "r71" --username=$USERNAME
svn update

export USERNAME="blue"
svn switch ^/branches/branch16
rm *
cp $COMMITS_PATH/commit72/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r72" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch15
rm *
cp $COMMITS_PATH/commit73/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r73" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch14
svn merge ^/branches/branch15
rm *
cp $COMMITS_PATH/commit74/* .
svn rm QboT8jLSLs.Tcc \*
svn add *
svn propdel svn:ignore .
svn commit -m "r74" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit75/* .
svn add *
svn propset svn:ignore "" .
svn commit -m "r75" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch2
rm *
cp $COMMITS_PATH/commit76/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r76" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch16
svn merge ^/branches/branch2
rm *
cp $COMMITS_PATH/commit77/* .
svn add *
svn commit -m "r77" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch19
rm *
cp $COMMITS_PATH/commit78/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r78" --username=$USERNAME

export USERNAME="red"
svn switch ^/trunk
svn merge ^/branches/branch19
rm *
cp $COMMITS_PATH/commit79/* .
svn add *
svn commit -m "r79" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch17
rm *
cp $COMMITS_PATH/commit80/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r80" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
svn merge ^/branches/branch17
rm *
cp $COMMITS_PATH/commit81/* .
svn add *
svn commit -m "r81" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch20
rm *
cp $COMMITS_PATH/commit82/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r82" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch10
svn merge ^/branches/branch20
rm *
cp $COMMITS_PATH/commit83/* .
svn add *
svn commit -m "r83" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch7
rm *
cp $COMMITS_PATH/commit84/* .
svn add *
# чтобы сделать пустой коммит
svn propset svn:ignore "" .
svn commit -m "r84" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
svn merge ^/branches/branch7
rm *
cp $COMMITS_PATH/commit85/* .
svn add *
svn commit -m "r85" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
rm *
cp $COMMITS_PATH/commit86/* .
svn add *
# чтобы сделать пустой коммит
svn propdel svn:ignore .
svn commit -m "r86" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch5
rm *
cp $COMMITS_PATH/commit87/* .
svn add *
svn commit -m "r87" --username=$USERNAME
svn update

export USERNAME="blue"
svn switch ^/branches/branch4
svn merge ^/branches/branch5
rm *
cp $COMMITS_PATH/commit88/* .
svn rm \*
svn add *
svn commit -m "r88" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch10
svn merge ^/branches/branch4
rm *
cp $COMMITS_PATH/commit89/* .
svn add *
svn commit -m "r89" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch21
rm *
cp $COMMITS_PATH/commit90/* .
svn add *
svn propset svn:ignore "" .
svn commit -m "r90" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch14
svn merge ^/branches/branch21
rm *
cp $COMMITS_PATH/commit91/* .
svn add *
svn commit -m "r91" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch11
rm *
cp $COMMITS_PATH/commit92/* .
svn add *
svn commit -m "r92" --username=$USERNAME
svn update

export USERNAME="blue"
svn switch ^/branches/branch6
svn merge ^/branches/branch11
rm *
cp $COMMITS_PATH/commit93/* .
svn rm \* QboT8jLSLs.Tcc
svn add *
svn commit -m "r93" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch3
svn merge ^/branches/branch6
rm *
cp $COMMITS_PATH/commit94/* .
svn add *
svn commit -m "r94" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch16
svn merge ^/branches/branch3
rm *
cp $COMMITS_PATH/commit95/* .
svn add *
svn commit -m "r95" --username=$USERNAME

export USERNAME="red"
svn switch ^/branches/branch14
svn merge ^/branches/branch16 --accept theirs-full
rm *
cp $COMMITS_PATH/commit96/* .
svn rm \* 4H3B7TccQb.TdU QboT8jLSLs.Tcc
svn add *
svn commit -m "r96" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch13
svn merge ^/branches/branch14 --accept theirs-full
rm *
cp $COMMITS_PATH/commit97/* .
svn rm QboT8jLSLs.Tcc SHZbVIP3tf.sMp \* 
svn add *
svn commit -m "r97" --username=$USERNAME

export USERNAME="blue"
svn switch ^/branches/branch10
svn merge ^/branches/branch13 --accept theirs-full
rm *
cp $COMMITS_PATH/commit98/* .
svn rm QboT8jLSLs.Tcc V03TdU4H3B.g4v u3FoPQzRE2.lEn
svn add *
svn commit -m "r98" --username=$USERNAME

export USERNAME="red"
svn switch ^/trunk
svn merge ^/branches/branch10 --accept theirs-full
rm *
cp $COMMITS_PATH/commit99/* .
svn rm \* QboT8jLSLs.Tcc
svn add *
svn commit -m "r99" --username=$USERNAME