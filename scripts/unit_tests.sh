
#!/bin/bash 

# Human36M  Monkey

dataset='Human36M'

echo "**** Running unit tests for $dataset dataset ****"

./scripts/train_mvnrsfm.sh $dataset
