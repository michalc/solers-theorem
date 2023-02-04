theory Solers
imports Main
begin

theorem
  shows "1 + 1 = 2"
  by auto

theorem
  shows "A --> A"
proof
  assume a: A
  show A by(rule a)
qed

end
