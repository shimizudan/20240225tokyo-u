#set text(
  font: 
  ("New Computer Modern Math","BIZ UDGothic"), 
  size: 11pt,
)

#set par(
leading: 3mm)

= 東京大学（理系）2024・数学
== 第1問#v(5mm)

座標空間内の点A$(0,-1,1)$をとる。$x y$#h(.5mm)平面上の点Pが次の条件 (i), (ii), (iii) をすべて満たすとする.

#set enum(numbering: "(i)")
+ P は原点 O と異なる.#v(5mm)
+ $display(angle #text[AOP] gt.equiv 2/3 pi)$#v(5mm)
+ $display(angle #text[OAP] lt.equiv pi/6)$#v(5mm)

P がとりうる範囲を$x y$#h(.5mm)平面上に図示せよ.


=== 解答

P$(x,y,0)$とおく。

+ $display(angle #text[AOP] gt.equiv 2/3 pi)$より，

  $ cos angle #text[AOP]= (arrow(#text[OA]) dot arrow(#text[OP]) )/(abs(arrow(#text[OA])) abs(arrow(#text[OP])))  = (vec(0,-1,1) dot vec(x,y,0))/(sqrt(2) sqrt(x^2+y^2)) = (-y)/(sqrt(2) sqrt(x^2+y^2)) lt.equiv -1/2 dots #text[①] $



+ $display(angle #text[OAP] lt.equiv pi/6 )$より，

  $ cos angle #text[OAP]= (arrow(#text[AO]) dot arrow(#text[AP]) )/(abs(arrow(#text[AO])) abs(arrow(#text[AP])))  = (vec(0,1,-1) dot vec(x,y+1,-1))/(sqrt(2) sqrt(x^2+(y+1)^2+(-1)^2)) = (y+2)/(sqrt(2) sqrt(x^2+y^2+2y+2)) gt.equiv sqrt(3)/2 dots #text[②] $

$#text[①] or #text[②]$ を`julia`で図示する。





= 東京大学（理系）2024・数学
== 第1問#v(5mm)

座標空間内の点A$(0,-1,1)$をとる。$x y$#h(.5mm)平面上の点Pが次の条件 (i), (ii), (iii) をすべて満たすとする.

#set enum(numbering: "(i)")
+ P は原点 O と異なる.#v(5mm)
+ $display(angle #text[AOP] gt.equiv 2/3 pi)$#v(5mm)
+ $display(angle #text[OAP] lt.equiv pi/6)$#v(5mm)

P がとりうる範囲を$x y$#h(.5mm)平面上に図示せよ.

== 第2問#v(5mm)

次の関数 $f(x)$を考える.

$ f(x) = integral_0^1 abs(t-x)/(1+t^2) #h(1mm)d t #h(5mm) (0 lt.equiv  x lt.equiv  1) $ 

#set enum(numbering: "(1)")

+ $display(0 < alpha < pi/4)$ を満たす実数 $alpha$で，$f'( tan alpha)=0$となるものを求めよ.#v(5mm)
+ (1) で求めた $alpha$に対し，$tan alpha$の値を求めよ.#v(5mm)
+ 関数 $f(x)$の区間 $0 lt.equiv  x lt.equiv 1$における最大値と最小値を求めよ。必要ならば，$0.69 < log 2 < 0.7$であることを用いてよい.


== 第3問#v(5mm)

座標平面上を次の規則 (i),\ (ii) に従って 1 秒ごとに動く点 P を考える.
// \renewcommand{\labelenumi}{(\roman{enumi})}
// \begin{enumerate}
// \item
// 最初に,\ Pは点 $(2,\ 1)$にいる.
// \item
// ある時刻で P が点 $(a,\ b)$にいるとき,\ その 1 秒後には P は
// \begin{enumerate}
// \item[・]
// 確率 $\frac{1}{3}$で $x$軸に関して $(a,\ b)$と対称な点\vspace{0.5zw}
// \item[・]
// 確率 $\frac{1}{3}$で $y$軸に関して $(a,\ b)$と対称な点\vspace{0.5zw}
// \item[・]
// 確率 $\frac{1}{6}$で直線 $y=x$に関して $(a,\ b)$と対称な点\vspace{0.5zw}
// \item[・]
// 確率 $\frac{1}{6}$で直線 $y=-x$に関して $(a,\ b)$と対称な点\vspace{0.5zw}
// \end{enumerate}
// にいる.
// \end{enumerate}
// \renewcommand{\labelenumi}{(\arabic{enumi})}
// 以下の問に答えよ. ただし,\ (1)については,\ 結論のみを書けばよい.
// \begin{enumerate}
// \item
// Pがとりうる点の座標をすべて求めよ.
// \item
// $n$を正の整数とする.\ 最初から $n$秒後に P が点 $(2,\ 1)$にいる確率と,\ 最初から $n$秒後に P が点 $(-2,\ -1)$にいる確率は等しいことを示せ.
// \item
// $n$を正の整数とする.\ 最初から $n$秒後に P が点 $(2,\ 1)$にいる確率を求めよ.
// \end{enumerate}

// \newpage

// \begin{flushleft}
// {\LARGE\textbf{2024年　東京大学(理系)}}\hspace{1zw}{\LARGE{No.~\thepage}}
// \end{flushleft}

// \dai
// $f(x)=-\frac{\sqrt{2}}{4}x^{2}+4\sqrt{2}$とおく.\ $0<t<4$を満たす実数 $t$に対し,\ 座標平面上の点 $(t,\ f(t))$を通り,\ この点において放物線 $y=f(x)$と共通の接線を持ち,\  $x$軸上に中心を持つ円を $C_{t}$とする.
// \begin{enumerate}
// \item
// 円 $C_{t}$の中心の座標を $(c(t),\ 0)$,\ 半径を $r(t)$とおく.\ $c(t)$と $\{ r(t)\}^{2}$を $t$の整式で表せ.
// \item
// 実数 $a$は
//  $0<a<f(3) $を満たすとする.\ 円 $C_{t}$が点 $(3,\ a)$を通るような実数 $t$は $0<t<4$の範囲にいくつあるか.
// \end{enumerate}

// \dai
// 座標空間内に3点 $\mathrm{A}(1,\ 0,\ 0),\ \mathrm{B}(0,\ 1,\ 0),\ \mathrm{C}(0,\ 0,\ 1)$をとり,\ D を線分 AC の中点とする.\ 三角形 ABD の周および内部を $x$軸のまわりに 1 回転させて得られる立体の体積を求めよ.

// \dai
// $2$以上の整数で,\ 1 とそれ自身以外に正の約数を持たない数を素数という.\ 以下の問いに答えよ.
// \begin{enumerate}
// \item
// $f(x)=x^{3}+10x^{2}+20x$とする.\ $f(n)$が素数となるような整数 $n$をすべて求めよ.
// \item
// $a,\ b$を整数の定数とし,\ $g(x)=x^{3}+ax^{2}+bx$とする.\ $g(n)$が素数となるような整数 $n$の個数は $3$個以下であることを示せ.
// \end{enumerate}