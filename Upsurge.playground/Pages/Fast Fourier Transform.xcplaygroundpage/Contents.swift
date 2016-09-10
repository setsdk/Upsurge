//: ## Fast Fourier Transform
//: This example shows how to perfrom a Fast Fourier Transform with Upsurge
import Upsurge
import PlaygroundSupport
//: Start by generating uniformly-spaced x-coordinates
let count = 64
let frequency = 4.0
let step = 2.0 * M_PI / Double(count)
let x = ValueArray<Double>((0..<count).map({ step * Double($0) * frequency }))
//: And the sine-wave y-coordinates
let amplitude = 1.0
let y = amplitude * sin(x)
for value in y {
    value
}
//: To compute the Fast Fourier Transform we initialize the `FFT` class with the number of samples
let fft = FFTDouble(inputLength: x.count)
//: Then compute power spectral density, which is the magnitudes of the FFT
let psd = fft.forwardMags(sin(x))
for value in psd {
    value
}
