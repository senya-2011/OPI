#!/bin/bash
set -e

export COMMITS_PATH="/home/user/Desktop/gitsvn/commits"

function clean_files() {
  find . -mindepth 1 -maxdepth 1 ! -name ".git" -exec rm -rf {} +
}

rm -rf repo-git
mkdir repo-git
cd repo-git
git init

clean_files
cp $COMMITS_PATH/commit0/* .
git add .
git commit --allow-empty -m "r0" --author="red <red@example.com>"

git checkout -b branch2 master
clean_files
cp $COMMITS_PATH/commit1/* .
git add .
git commit --allow-empty -m "r1" --author="blue <blue@example.com>"

git checkout -b branch3 branch2
clean_files
cp $COMMITS_PATH/commit2/* .
git add .
git commit --allow-empty -m "r2" --author="red <red@example.com>"

git checkout -b branch4 branch3
clean_files
cp $COMMITS_PATH/commit3/* .
git add .
git commit --allow-empty -m "r3" --author="blue <blue@example.com>"

git checkout -b branch5 branch4
clean_files
cp $COMMITS_PATH/commit4/* .
git add .
git commit --allow-empty -m "r4" --author="blue <blue@example.com>"

git checkout master
clean_files
cp $COMMITS_PATH/commit5/* .
git add .
git commit --allow-empty -m "r5" --author="red <red@example.com>"

git checkout branch3
clean_files
cp $COMMITS_PATH/commit6/* .
git add .
git commit --allow-empty -m "r6" --author="red <red@example.com>"

git checkout -b branch6 branch3
clean_files
cp $COMMITS_PATH/commit7/* .
git add .
git commit --allow-empty -m "r7" --author="blue <blue@example.com>"

git checkout -b branch7 branch6
clean_files
cp $COMMITS_PATH/commit8/* .
git add .
git commit --allow-empty -m "r8" --author="blue <blue@example.com>"

git checkout -b branch8 branch7
clean_files
cp $COMMITS_PATH/commit9/* .
git add .
git commit --allow-empty -m "r9" --author="blue <blue@example.com>"

git checkout branch5
clean_files
cp $COMMITS_PATH/commit10/* .
git add .
git commit --allow-empty -m "r10" --author="blue <blue@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit11/* .
git add .
git commit --allow-empty -m "r11" --author="blue <blue@example.com>"

git checkout -b branch9 branch7
clean_files
cp $COMMITS_PATH/commit12/* .
git add .
git commit --allow-empty -m "r12" --author="red <red@example.com>"

git checkout -b branch10 branch9
clean_files
cp $COMMITS_PATH/commit13/* .
git add .
git commit --allow-empty -m "r13" --author="blue <blue@example.com>"

git checkout -b branch11 branch10
clean_files
cp $COMMITS_PATH/commit14/* .
git add .
git commit --allow-empty -m "r14" --author="blue <blue@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit15/* .
git add .
git commit --allow-empty -m "r15" --author="blue <blue@example.com>"

git checkout -b branch12 branch7
clean_files
cp $COMMITS_PATH/commit16/* .
git add .
git commit --allow-empty -m "r16" --author="red <red@example.com>"

git checkout branch11
clean_files
cp $COMMITS_PATH/commit17/* .
git add .
git commit --allow-empty -m "r17" --author="blue <blue@example.com>"

git checkout -b branch13 branch11
clean_files
cp $COMMITS_PATH/commit18/* .
git add .
git commit --allow-empty -m "r18" --author="blue <blue@example.com>"

git checkout -b branch14 branch13
clean_files
cp $COMMITS_PATH/commit19/* .
git add .
git commit --allow-empty -m "r19" --author="red <red@example.com>"

git checkout branch11
clean_files
cp $COMMITS_PATH/commit20/* .
git add .
git commit --allow-empty -m "r20" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit21/* .
git add .
git commit --allow-empty -m "r21" --author="red <red@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit22/* .
git add .
git commit --allow-empty -m "r22" --author="blue <blue@example.com>"

git checkout -b branch15 branch13
clean_files
cp $COMMITS_PATH/commit23/* .
git add .
git commit --allow-empty -m "r23" --author="blue <blue@example.com>"

git checkout -b branch16 branch15
clean_files
cp $COMMITS_PATH/commit24/* .
git add .
git commit --allow-empty -m "r24" --author="blue <blue@example.com>"

git checkout branch8
clean_files
cp $COMMITS_PATH/commit25/* .
git add .
git commit --allow-empty -m "r25" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit26/* .
git add .
git commit --allow-empty -m "r26" --author="red <red@example.com>"

git checkout branch15
clean_files
cp $COMMITS_PATH/commit27/* .
git add .
git commit --allow-empty -m "r27" --author="blue <blue@example.com>"

git checkout -b branch17 branch15
clean_files
cp $COMMITS_PATH/commit28/* .
git add .
git commit --allow-empty -m "r28" --author="red <red@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit29/* .
git add .
git commit --allow-empty -m "r29" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit30/* .
git add .
git commit --allow-empty -m "r30" --author="red <red@example.com>"

git checkout branch9
clean_files
cp $COMMITS_PATH/commit31/* .
git add .
git commit --allow-empty -m "r31" --author="red <red@example.com>"

git checkout -b branch18 branch9
clean_files
cp $COMMITS_PATH/commit32/* .
git add .
git commit --allow-empty -m "r32" --author="red <red@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit33/* .
git add .
git commit --allow-empty -m "r33" --author="blue <blue@example.com>"

git checkout branch11
clean_files
cp $COMMITS_PATH/commit34/* .
git add .
git commit --allow-empty -m "r34" --author="blue <blue@example.com>"

git checkout branch9
clean_files
cp $COMMITS_PATH/commit35/* .
git add .
git commit --allow-empty -m "r35" --author="red <red@example.com>"

git checkout branch18
clean_files
cp $COMMITS_PATH/commit36/* .
git add .
git commit --allow-empty -m "r36" --author="red <red@example.com>"

git checkout branch16
clean_files
cp $COMMITS_PATH/commit37/* .
git add .
git commit --allow-empty -m "r37" --author="blue <blue@example.com>"

git checkout -b branch19 branch16
clean_files
cp $COMMITS_PATH/commit38/* .
git add .
git commit --allow-empty -m "r38" --author="blue <blue@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit39/* .
git add .
git commit --allow-empty -m "r39" --author="blue <blue@example.com>"

git checkout branch16
clean_files
cp $COMMITS_PATH/commit40/* .
git add .
git commit --allow-empty -m "r40" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit41/* .
git add .
git commit --allow-empty -m "r41" --author="red <red@example.com>"

git checkout branch9
clean_files
cp $COMMITS_PATH/commit42/* .
git add .
git commit --allow-empty -m "r42" --author="red <red@example.com>"

git checkout branch11
clean_files
cp $COMMITS_PATH/commit43/* .
git add .
git commit --allow-empty -m "r43" --author="blue <blue@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit44/* .
git add .
git commit --allow-empty -m "r44" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit45/* .
git add .
git commit --allow-empty -m "r45" --author="red <red@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit46/* .
git add .
git commit --allow-empty -m "r46" --author="blue <blue@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit47/* .
git add .
git commit --allow-empty -m "r47" --author="blue <blue@example.com>"

git checkout master
clean_files
cp $COMMITS_PATH/commit48/* .
git add .
git commit --allow-empty -m "r48" --author="red <red@example.com>"

git checkout -b branch20 master
clean_files
cp $COMMITS_PATH/commit49/* .
git add .
git commit --allow-empty -m "r49" --author="blue <blue@example.com>"

git checkout branch6
clean_files
cp $COMMITS_PATH/commit50/* .
git add .
git commit --allow-empty -m "r50" --author="blue <blue@example.com>"

git checkout branch12
clean_files
cp $COMMITS_PATH/commit51/* .
git add .
git commit --allow-empty -m "r51" --author="red <red@example.com>"

git checkout branch15
clean_files
cp $COMMITS_PATH/commit52/* .
git add .
git commit --allow-empty -m "r52" --author="blue <blue@example.com>"

git checkout branch3
clean_files
cp $COMMITS_PATH/commit53/* .
git add .
git commit --allow-empty -m "r53" --author="red <red@example.com>"

git checkout -b branch21 branch3
clean_files
cp $COMMITS_PATH/commit54/* .
git add .
git commit --allow-empty -m "r54" --author="red <red@example.com>"

git checkout branch8
clean_files
cp $COMMITS_PATH/commit55/* .
git add .
git commit --allow-empty -m "r55" --author="blue <blue@example.com>"

git checkout branch13
git merge branch8 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit56/* .
git add .
git commit --allow-empty -m "r56" --author="blue <blue@example.com>"

git checkout branch20
clean_files
cp $COMMITS_PATH/commit57/* .
git add .
git commit --allow-empty -m "r57" --author="blue <blue@example.com>"

git checkout branch2
clean_files
cp $COMMITS_PATH/commit58/* .
git add .
git commit --allow-empty -m "r58" --author="blue <blue@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit59/* .
git add .
git commit --allow-empty -m "r59" --author="blue <blue@example.com>"

git checkout branch4
clean_files
cp $COMMITS_PATH/commit60/* .
git add .
git commit --allow-empty -m "r60" --author="blue <blue@example.com>"

git checkout branch17
clean_files
cp $COMMITS_PATH/commit61/* .
git add .
git commit --allow-empty -m "r61" --author="red <red@example.com>"

git checkout branch18
clean_files
cp $COMMITS_PATH/commit62/* .
git add .
git commit --allow-empty -m "r62" --author="red <red@example.com>"

git checkout branch18
clean_files
cp $COMMITS_PATH/commit63/* .
git add .
git commit --allow-empty -m "r63" --author="red <red@example.com>"

git checkout branch9
git merge branch18 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit64/* .
git add .
git commit --allow-empty -m "r64" --author="red <red@example.com>"

git checkout branch5
git merge branch9 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit65/* .
# Remove file QboT8jLSLs.Tcc if it exists
rm -f QboT8jLSLs.Tcc
git add .
git commit --allow-empty -m "r65" --author="blue <blue@example.com>"

git checkout branch2
clean_files
cp $COMMITS_PATH/commit66/* .
git add .
git commit --allow-empty -m "r66" --author="blue <blue@example.com>"

git checkout branch14
clean_files
cp $COMMITS_PATH/commit67/* .
git add .
git commit --allow-empty -m "r67" --author="red <red@example.com>"

git checkout branch20
clean_files
cp $COMMITS_PATH/commit68/* .
git add .
git commit --allow-empty -m "r68" --author="blue <blue@example.com>"

git checkout branch19
clean_files
cp $COMMITS_PATH/commit69/* .
git add .
git commit --allow-empty -m "r69" --author="blue <blue@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit70/* .
git add .
git commit --allow-empty -m "r70" --author="blue <blue@example.com>"

git checkout branch5
clean_files
cp $COMMITS_PATH/commit71/* .
# Remove file H3B7TccQbo.dU4 if it exists
rm -f H3B7TccQbo.dU4
git add .
git commit --allow-empty -m "r71" --author="blue <blue@example.com>"

# (No explicit update needed in Git)

git checkout branch16
clean_files
cp $COMMITS_PATH/commit72/* .
git add .
git commit --allow-empty -m "r72" --author="blue <blue@example.com>"

git checkout branch15
clean_files
cp $COMMITS_PATH/commit73/* .
git add .
git commit --allow-empty -m "r73" --author="blue <blue@example.com>"

git checkout branch14
git merge branch15 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit74/* .
# Remove file QboT8jLSLs.Tcc if present
rm -f QboT8jLSLs.Tcc
git add .
git commit --allow-empty -m "r74" --author="blue <blue@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit75/* .
git add .
git commit --allow-empty -m "r75" --author="blue <blue@example.com>"

git checkout branch2
clean_files
cp $COMMITS_PATH/commit76/* .
git add .
git commit --allow-empty -m "r76" --author="blue <blue@example.com>"

git checkout branch16
git merge branch2 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit77/* .
git add .
git commit --allow-empty -m "r77" --author="blue <blue@example.com>"

git checkout branch19
clean_files
cp $COMMITS_PATH/commit78/* .
git add .
git commit --allow-empty -m "r78" --author="blue <blue@example.com>"

git checkout master
git merge branch19 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit79/* .
git add .
git commit --allow-empty -m "r79" --author="red <red@example.com>"

git checkout branch17
clean_files
cp $COMMITS_PATH/commit80/* .
git add .
git commit --allow-empty -m "r80" --author="red <red@example.com>"

git checkout branch11
git merge branch17 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit81/* .
git add .
git commit --allow-empty -m "r81" --author="blue <blue@example.com>"

git checkout branch20
clean_files
cp $COMMITS_PATH/commit82/* .
git add .
git commit --allow-empty -m "r82" --author="blue <blue@example.com>"

git checkout branch10
git merge branch20 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit83/* .
git add .
git commit --allow-empty -m "r83" --author="blue <blue@example.com>"

git checkout branch7
clean_files
cp $COMMITS_PATH/commit84/* .
git add .
git commit --allow-empty -m "r84" --author="blue <blue@example.com>"

git checkout branch13
git merge branch7 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit85/* .
git add .
git commit --allow-empty -m "r85" --author="blue <blue@example.com>"

git checkout branch13
clean_files
cp $COMMITS_PATH/commit86/* .
git add .
git commit --allow-empty -m "r86" --author="blue <blue@example.com>"

git checkout branch5
clean_files
cp $COMMITS_PATH/commit87/* .
git add .
git commit --allow-empty -m "r87" --author="blue <blue@example.com>"

git checkout branch4
git merge branch5 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit88/* .
# (Assume that “rm *” means remove all tracked files that should be removed.)
git add .
git commit --allow-empty -m "r88" --author="blue <blue@example.com>"

git checkout branch10
git merge branch4 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit89/* .
git add .
git commit --allow-empty -m "r89" --author="blue <blue@example.com>"

git checkout branch21
clean_files
cp $COMMITS_PATH/commit90/* .
git add .
git commit --allow-empty -m "r90" --author="red <red@example.com>"

git checkout branch14
git merge branch21 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit91/* .
git add .
git commit --allow-empty -m "r91" --author="red <red@example.com>"

git checkout branch11
clean_files
cp $COMMITS_PATH/commit92/* .
git add .
git commit --allow-empty -m "r92" --author="blue <blue@example.com>"

git checkout branch6
git merge branch11 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit93/* .
# Remove files as indicated:
rm -f QboT8jLSLs.Tcc
git add .
git commit --allow-empty -m "r93" --author="blue <blue@example.com>"

git checkout branch3
git merge branch6 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit94/* .
git add .
git commit --allow-empty -m "r94" --author="red <red@example.com>"

git checkout branch16
git merge branch3 --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit95/* .
git add .
git commit --allow-empty -m "r95" --author="blue <blue@example.com>"

git checkout branch14
# Use the "theirs" strategy option during merge:
git merge branch16 -X theirs --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit96/* .
# Remove indicated files:
rm -f "4H3B7TccQb.TdU" QboT8jLSLs.Tcc
git add .
git commit --allow-empty -m "r96" --author="red <red@example.com>"

git checkout branch13
git merge branch14 -X theirs --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit97/* .
rm -f QboT8jLSLs.Tcc SHZbVIP3tf.sMp
git add .
git commit --allow-empty -m "r97" --author="blue <blue@example.com>"

git checkout branch10
git merge branch13 -X theirs --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit98/* .
rm -f QboT8jLSLs.Tcc V03TdU4H3B.g4v u3FoPQzRE2.lEn
git add .
git commit --allow-empty -m "r98" --author="blue <blue@example.com>"

git checkout master
git merge branch10 -X theirs --no-edit --no-commit
clean_files
cp $COMMITS_PATH/commit99/* .
rm -f QboT8jLSLs.Tcc
git add .
git commit --allow-empty -m "r99" --author="red <red@example.com>"

echo "Done! All 100 commits have been created in the Git repository."
