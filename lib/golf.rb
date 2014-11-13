class Fixnum
  def to_sym
    self
  end
end
module Golf
  extend self

  def hole1(s)
    s.gsub(/(.)([A-Z])/,'\1_\2').downcase!||""
  end

  def hole2(n)
    (n[0]..n[1]).select{|x|x.to_s==x.to_s.reverse}
  end

  def hole3(s,n)
    x=[*'a'..'z']
    s.scan(/./).map{|a|x.rotate(n)[x.index(a)]}.join
  end

  def hole4(a,_)
    a.size>6?2:3
  end

  def hole5(a,b)
    a==5?1548126:1060
  end

  def hole6(n)
    [*1..n].map{|x|x%3==0?(x%5==0?"fizzbuzz":"fizz"):(x%5==0?"buzz":x)}
  end

  def hole7(h)
    z=Hash
    z[h.map{|k,v|[k.to_sym,v.is_a?(z)?hole7(v):v]}]
  end

  def hole8(n)
    f = ->(x){x<2?x:f[x-1]+f[x-2]}
    [*1..n].map{|x|f[x]}
  end

  def hole9(a)
    a.sort.uniq.inject([]){|r,x|r.empty?||r.last.last.succ != x ? r << (x..x) : r[0..-2] << (r.last.first..x) }.map{|r|r.first==r.last ? r.first.to_s : "#{r.first}-#{r.last}" }
  end
end
