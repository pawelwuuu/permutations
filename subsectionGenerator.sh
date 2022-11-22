#!/bin/bash
IFS=$'\n' read -d '' -r -a permutations < $1
originalPermutation=${permutations[-1]}

echo "\sloppy \textbf{Glowna permutacja to $originalPermutation}" >> ./generatedPdf/sketch.tex

for ((i=0; i<${#permutations[@]}-1; i++))
do
    echo "\subsection{${permutations[i]}}" >> ./generatedPdf/sketch.tex

    echo "\begin{tabular}{ |p{4.5cm}|p{9cm}| }" >> ./generatedPdf/sketch.tex
    echo  "\hline" >> ./generatedPdf/sketch.tex

    echo  "Permutacja w dwoch liniach & skryptIgora.sh \\\\"  >> ./generatedPdf/sketch.tex 
    echo  "\hline" >> ./generatedPdf/sketch.tex

    echo "Rz permutacji & skryptIgora.sh \\\\" >> ./generatedPdf/sketch.tex
    echo  "\hline" >> ./generatedPdf/sketch.tex
    
    echo "Liczba inwersji & `./build/liczbaInwersji $originalPermutation ${permutations[i]}` \\\\" >> ./generatedPdf/sketch.tex
    echo  "\hline" >> ./generatedPdf/sketch.tex

    echo "Inwersje permutacji & `./build/inwersjePermutacji $originalPermutation ${permutations[i]}` \\\\" >> ./generatedPdf/sketch.tex
    echo  "\hline" >> ./generatedPdf/sketch.tex

    echo "Parzystosc permutacji & `./build/parzystoscPermutacji $originalPermutation ${permutations[i]}` \\\\" >> ./generatedPdf/sketch.tex
    echo  "\hline" >> ./generatedPdf/sketch.tex
    echo "\end{tabular}" >> ./generatedPdf/sketch.tex
done