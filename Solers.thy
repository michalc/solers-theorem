theory Solers
imports Main
begin

theorem
  shows "1 + 1 = 2"
  by auto

theorem
  shows "A --> A \<and> A"
proof
  assume a: "A"
  from a and a show "A \<and> A" ..
qed

end
