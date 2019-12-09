import Foundation

func citeste(a: inout Float, b: inout Float, c: inout Float)
{
  print("a = ")
  let s_o_a = readLine() // string optional
  if let s_a = s_o_a{
    let f_o_a = Float(s_a)
    if let f_a = f_o_a{
      print("b = ")
      let s_o_b = readLine() // string optional
      if let s_b = s_o_b{
        let f_o_b = Float(s_b)
        if let f_b = f_o_b{
          print("c = ")
          let s_o_c = readLine() // string optional
          if let s_c = s_o_c{
            let f_o_c = Float(s_c)
            if let f_c = f_o_c{
              a = f_a
              b = f_b
              c = f_c
            }
            else{
              print("nu s-a putut converti c")
            }
          }
          else{
            print("nu am citit nimic in c")
          }
        }
        else{
          print("nu s-a putut converti b")
        }
      }
      else{
        print("nu am citit nimic in b")
      }
    }
    else{
      print("nu s-a putut converti a")
    }
  }
  else{
    print("nu am citit nimic in a")
  }
}
func calculeaza(a: Float, b: Float, c: Float, x1_re: inout Float, x1_im: inout Float, x2_re: inout Float, x2_im: inout Float)
{
  let delta = b * b - 4 * a * c
  if delta >= 0{
    x1_re = (-b - sqrt(delta)) / (2 * a)
    x2_re = (-b + sqrt(delta)) / (2 * a)
    x1_im = 0
    x2_im = 0
  }
  else{
    x1_re = -b / (2 * a)
    x2_re = -b / (2 * a)
    x1_im = -sqrt(-delta) /  (2 * a)
    x2_im = sqrt(-delta) /  (2 * a)
  }
}
func tipareste(x1_re: Float, x1_im: Float, x2_re: Float, x2_im: Float)
{
  print("x1 = \(x1_re) + \(x1_im)i")
  print("x2 = \(x2_re) + \(x2_im)i")
}

var a, b, c: Float
a = 1
b = 2
c = 1
var x1_re, x1_im, x2_re, x2_im: Float
x1_re = 0
x1_im = 0
x2_re = 0
x2_im = 0

citeste(a:&a, b:&b, c:&c)
calculeaza(a: a, b: b, c: c, x1_re: &x1_re, x1_im: &x1_im, x2_re: &x2_re, x2_im: &x2_im)
tipareste(x1_re: x1_re, x1_im: x1_im, x2_re: x2_re, x2_im: x2_im)
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
