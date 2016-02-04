//: ## Fast Fourier Transform
//: This example shows how to perfrom a Fast Fourier Transform with Upsurge
import Upsurge
import XCPlayground
//: Let's define a function to plot all the values in a `ValueArray` to the timeline. If you don't see the timeline press ⌘⌥⏎
func plot(values: ValueArray<Double>, title: String) {
    for value in values {
        XCPlaygroundPage.currentPage.captureValue(value, withIdentifier: title)
    }
}
//: Start by generating uniformly-spaced x-coordinates
let count = 64
let frequency = 4.0
let step = 2.0 * M_PI / Double(count)
let x = ValueArray<Double>((0..<count).map({ step * Double($0) * frequency }))
//: And the sine-wave y-coordinates
let amplitude = 1.0
let y = amplitude * sin(x)
//: Now use the function we defined previously to plot the values
plot(y, title: "Sine Wave")
//: To compute the Fast Fourier Transform we initialize the `FFT` class with the number of samples
let fft = FFTDouble(inputLength: x.count)
//: Then compute power spectral density, which is the magnitudes of the FFT
let psd = fft.forwardMags(sin(x))
plot(psd, title: "FFT")
