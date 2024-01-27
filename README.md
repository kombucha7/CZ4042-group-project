# Neural Network and Deep Learning Project #
Project focuses on exploring advanced models and training techniques on the Flowers102 dataset.

## Key areas explored ##
1. Performing tests on different models and their variants. (ResNet, VGGnet, Efficientnet)
2. Performing modification on ResNet34 model.
3. Performing Training with more advanced techniques. (FewShot, Cutmix)

## Summary ##
### Model Testing ###
In the context of the Flowers102 dataset, shallow model variants tend to perform poorer than their deeper counterparts while "Medium" depth models tend to perform similarly to their deepest variants in terms of accuracy. However, deeper models have an exponentially slower training time which only have moderate accuracy improvements over the medium variants. We hypothesized that this was due to the flowers102 having only 102 classes and about 10 training images per class, leading to model overfitting on the larger models.

### Model Modification ###
We tried 2 main ways of modification: 
1. Applying bottleneck layer from ResNet50 to ResNet34.
2. Addeding attention to ResNet34 via Squeeze and Excitation.

Our testing showed that adding the bottleneck layer did not lead to any improvements but rather led to a drop in accuracy while adding the Squeeze and Excitation layer improved training times while maintaining similar levels of accuracy. Adding the bottleneck layer caused us to be unable to used the pretrained weights which could have led to the fall in accuracy. Using SE blocks helped reduce the spatial information of the feature maps in the model which could have led to a lower computational cost and reduce overall training time.

### Advanced Training Techniques ###
We tried 2 different techniques:
1. CutMix and MixUp (CutMix)
2. FewShot Learning

Both techniques led to a fall in training accuracy. CutMix could have potentially added more noise into the already shallow training dataset making the model less accurate. FewShot learning showed the diminishing returns of increasing the training datasize but all smaller training datasets performed worse in terms of accuracy.
