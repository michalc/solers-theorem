theory Solers
imports Main
begin

theorem
  shows "1 + 1 = 2"
  by auto

theorem
  shows "A --> A \<and> A"
proof
  assume "A"
  from this and this show "A \<and> A" ..
qed

end
