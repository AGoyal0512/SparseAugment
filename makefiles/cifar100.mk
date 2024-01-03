## cifar100.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.Standard.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_Standard" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="standard" $(HYDRA_FLAGS)

## cifar100.Base.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.Base.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_Base" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="base" $(HYDRA_FLAGS)

## cifar100.CutMix.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.CutMix.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="cutmix" masking.mixing_value=$(MIXING) exp_name="$*_CutMix_$(MIXING)" $(HYDRA_FLAGS)

## cifar100.MixUp.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.MixUp.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="mixup" masking.mixing_value=$(MIXING) exp_name="$*_MixUp_$(MIXING)" $(HYDRA_FLAGS)

## cifar100.RandAugment.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.RandAugment.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_RandAugment" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="randaugment" $(HYDRA_FLAGS)

## cifar100.RandAugment.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.AugMix.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_AugMix" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="augmix" $(HYDRA_FLAGS)

## cifar100.ElasticTransform.ERK.%: Run CIFAR 100 ERK runs. % in RigL, SNFS, SET
cifar100.ElasticTransform.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_ElasticTransform" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="elastic" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.Standard.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_Standard" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="standard" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.Base.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_Base" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="base" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.AugMix.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_AugMix" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="augmix" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.CutMix.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_CutMix" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="cutmix" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.RandAugment.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_RandAugment" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="randaugment" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.MixUp.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_MixUp" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="mixup" $(HYDRA_FLAGS)

## cifar100.Dense: Dense runs
cifar100.ElasticTransform.Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED) exp_name="Dense_ElasticTransform" masking.density=$(DENSITY) \
	wandb.entity="landskape" wandb.project="SparseAugment" wandb.use=$(USE_WANDB) \
	dataset.augment="elastic" $(HYDRA_FLAGS)

## cifar100.2x.ERK.%: Run CIFAR 10 2x ERK runs. % in RigL, SNFS, SET
cifar100.2x.ERK.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD \
	masking=$* +specific=cifar100_resnet50_masking \
	seed=$(SEED) \
	exp_name="$*_2x_ERK" optimizer.training_multiplier=2 \
	masking.density=$(DENSITY) wandb.project="cifar10" wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.2x.Random.%: Run CIFAR 10 2x Random runs. % in RigL, SNFS, SET
cifar100.2x.Random.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD \
	masking=$* +specific=cifar100_resnet50_masking \
	seed=$(SEED) masking.sparse_init=random \
	exp_name="$*_2x_Random" optimizer.training_multiplier=2 \
	masking.density=$(DENSITY) wandb.project="cifar10" wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.3x.Random.%: Run CIFAR 10 3x Random runs. % in RigL, SNFS, SET
cifar100.3x.Random.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD \
	masking=$* +specific=cifar100_resnet50_masking \
	seed=$(SEED) masking.sparse_init=random \
	exp_name="$*_3x_Random" optimizer.training_multiplier=3 \
	masking.density=$(DENSITY) wandb.project="cifar10" wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.Random.%: Run CIFAR 10 Random runs. % in RigL, SNFS, SET
cifar100.Random.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=$* \
	+specific=cifar100_resnet50_masking seed=$(SEED) exp_name="$*_Random" \
	masking.sparse_init=random masking.density=$(DENSITY) wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.Pruning: Pruning runs
cifar100.Pruning:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD \
	+specific=cifar100_resnet50_pruning exp_name='Pruning' seed=$(SEED)  \
	masking.final_density=$(DENSITY) wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.Lottery: Lottery runs
cifar100.Lottery: cifar100.Pruning
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Lottery \
	+specific=cifar100_resnet50_lottery exp_name='Lottery' seed=$(SEED)  \
	masking.density=$(DENSITY) wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.Small-Dense: Small-Dense runs
cifar100.Small-Dense:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD masking=Small_Dense \
	+specific=cifar100_resnet50_dense seed=$(SEED)  \
	masking.density=$(DENSITY) wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

## cifar100.Static.%: use as cifar100.Static.ERK, cifar100.Static.Random
cifar100.Static.%:
	${PYTHON} main.py hydra/launcher=basic dataset=CIFAR100 optimizer=SGD \
	+specific=cifar100_resnet50_static seed=$(SEED) exp_name="Static_$*" \
	masking.density=$(DENSITY) wandb.use=$(USE_WANDB) $(HYDRA_FLAGS)

CIFAR100_DEPS := cifar100.ERK.RigL cifar100.ERK.SNFS cifar100.ERK.SET
CIFAR100_DEPS += cifar100.Random.RigL cifar100.Random.SNFS cifar100.Random.SET
CIFAR100_DEPS += cifar100.2x.ERK.RigL
CIFAR100_DEPS += cifar100.2x.Random.RigL
CIFAR100_DEPS += cifar100.3x.Random.RigL
CIFAR100_DEPS += cifar100.Pruning cifar100.Lottery cifar100.Small-Dense
CIFAR100_DEPS += cifar100.Static.ERK cifar100.Static.Random

## cifar100: Main CIFAR 10 Runs
cifar100: $(CIFAR100_DEPS)