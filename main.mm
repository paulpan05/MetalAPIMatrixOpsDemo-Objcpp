#include <iostream>
#include <Foundation/Foundation.h>
#include <Metal/Metal.h>
#include <MetalPerformanceShaders/MetalPerformanceShaders.h>

int main() {
    NSArray<id<MTLDevice>>* devices = MTLCopyAllDevices();
    for (id<MTLDevice> device in devices) {
        std::cout << device.description.UTF8String << std::endl;
        std::cout << std::boolalpha;
        std::cout << (MPSSupportsMTLDevice(device) == YES) << std::endl;
    }
    id<MTLDevice> device = devices[0];
    id<MTLCommandQueue> commandQueue = device.newCommandQueue;
    id<MTLCommandBuffer> commandBuffer = commandQueue.commandBuffer;
    id<MTLBlitCommandEncoder> blitCommandEncoder = commandBuffer.blitCommandEncoder;
    MPSMatrixDescriptor* matrixDescriptor = [MPSMatrixDescriptor matrixDescriptorWithRows:500 columns:600 rowBytes:600 * sizeof(Float32) dataType:MPSDataTypeFloat32];
    MPSVectorDescriptor* vectorDescriptor = [MPSVectorDescriptor vectorDescriptorWithLength:600 dataType:MPSDataTypeFloat32];
    MPSVectorDescriptor* resultDescriptor = [MPSVectorDescriptor vectorDescriptorWithLength:500 dataType:MPSDataTypeFloat32];
    MPSMatrixVectorMultiplication* oper = [[MPSMatrixVectorMultiplication alloc] initWithDevice:device rows:500 columns:600];
    id<MTLBuffer> matrixBuffer = [device newBufferWithLength:500 * 600 * sizeof(Float32) options:MTLResourceStorageModeManaged];
    id<MTLBuffer> vectorBuffer = [device newBufferWithLength:600 * sizeof(Float32) options:MTLResourceStorageModeManaged];
    id<MTLBuffer> resultBuffer = [device newBufferWithLength:500 * sizeof(Float32) options:MTLResourceStorageModeManaged];
    ((Float32*) matrixBuffer.contents)[601] = 2;
    ((Float32*) vectorBuffer.contents)[1] = 4;
    MPSMatrix* mpsMatrix = [[MPSMatrix alloc] initWithBuffer:matrixBuffer descriptor:matrixDescriptor];
    MPSVector* mpsVector = [[MPSVector alloc] initWithBuffer:vectorBuffer descriptor:vectorDescriptor];
    MPSVector* mpsResult = [[MPSVector alloc] initWithBuffer:resultBuffer descriptor:resultDescriptor];

    [blitCommandEncoder endEncoding];
    [oper encodeToCommandBuffer:commandBuffer inputMatrix:mpsMatrix inputVector:mpsVector resultVector:mpsResult];
    [blitCommandEncoder synchronizeResource:resultBuffer];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    std::cout << ((Float32 *)resultBuffer.contents)[1];




    return 0;
}
