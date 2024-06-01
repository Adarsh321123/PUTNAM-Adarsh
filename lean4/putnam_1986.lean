import Mathlib
open BigOperators


abbrev putnam_1986_a1_solution : ℝ := sorry
-- 18
theorem putnam_1986_a1
(S : Set ℝ := {x : ℝ | x ^ 4 + 36 ≤ 13 * x ^ 2})
(f : ℝ → ℝ := fun x ↦ x ^ 3 - 3 * x)
: (∀ x ∈ S, f x ≤ putnam_1986_a1_solution ∧ ∃ x ∈ S, f x = putnam_1986_a1_solution) :=
sorry

abbrev putnam_1986_a2_solution : ℕ := sorry
-- 3
theorem putnam_1986_a2
: (Nat.floor ((10 ^ 20000 : ℝ) / (10 ^ 100 + 3)) % 10 = putnam_1986_a2_solution) :=
sorry

open  Real
noncomputable abbrev putnam_1986_a3_solution : ℝ := sorry
-- Real.pi / 2
theorem putnam_1986_a3
(cot : ℝ → ℝ := fun θ ↦ cos θ / sin θ)
(arccot : ℝ → ℝ)
(harccot : ∀ t : ℝ, t ≥ 0 → arccot t ∈ Set.Ioc 0 (Real.pi / 2) ∧ cot (arccot t) = t)
: (∑' n : ℕ, arccot (n ^ 2 + n + 1) = putnam_1986_a3_solution) :=
sorry

open Equiv

abbrev putnam_1986_a4_solution : ℚ × ℚ × ℚ × ℚ × ℚ × ℚ × ℚ := sorry
-- (1, 4, 2, 3, -4, 2, 1)
theorem putnam_1986_a4
(f : ℕ → ℕ := {A : Matrix (Fin n) (Fin n) ℤ | (∀ i j : Fin n, A i j ∈ ({-1, 0, 1} : Set ℤ)) ∧ ∃ S : ℤ, ∀ ϕ : Perm (Fin n), ∑ i : Fin n, A i (ϕ i) = S}.ncard)
: let (a1, b1, a2, b2, a3, b3, a4) := putnam_1986_a4_solution;
(∀ n > 0, f n = a1 * b1 ^ n + a2 * b2 ^ n + a3 * b3 ^ n + a4) :=
sorry


noncomputable abbrev putnam_1986_a6_solution : (ℕ → ℕ) → ℕ → ℝ := sorry
-- fun b n ↦ (∏ i : Finset.Icc 1 n, b i) / Nat.factorial n
theorem putnam_1986_a6
(n : ℕ)
(npos : n > 0)
(a : ℕ → ℝ)
(b : ℕ → ℕ)
(bpos : ∀ i ∈ Finset.Icc 1 n, b i > 0)
(binj : ∀ i ∈ Finset.Icc 1 n, ∀ j ∈ Finset.Icc 1 n, b i = b j → i = j)
(f : Polynomial ℝ)
(hf : ∀ x : ℝ, (1 - x) ^ n * f.eval x = 1 + ∑ i : Finset.Icc 1 n, (a i) * x ^ (b i))
: (f.eval 1 = putnam_1986_a6_solution b n) :=
sorry

noncomputable abbrev putnam_1986_b2_solution : Finset (ℂ × ℂ × ℂ) := sorry
-- {(0, 0, 0), (0, -1, 1), (1, 0, -1), (-1, 1, 0)}
theorem putnam_1986_b2
: ({T : ℂ × ℂ × ℂ | ∃ x y z : ℂ, T = (x - y, y - z, z - x) ∧ x * (x - 1) + 2 * y * z = y * (y - 1) + 2 * z * x ∧ y * (y - 1) + 2 * z * x = z * (z - 1) + 2 * x * y} = putnam_1986_b2_solution) :=
sorry

open Polynomial

theorem putnam_1986_b3
(cong : Polynomial ℤ → Polynomial ℤ → ℤ → Prop := fun f g m ↦ ∀ i : ℕ, m ∣ (f - g).coeff i)
(n p : ℕ)
(nppos : n > 0 ∧ p > 0)
(pprime : Nat.Prime p)
(f g h r s : Polynomial ℤ)
(hcoprime : cong (r * f + s * g) 1 p)
(hprod : cong (f * g) h p)
: (∃ F G : Polynomial ℤ, cong F f p ∧ cong G g p ∧ cong (F * G) h (p ^ n)) :=
sorry

open Filter Topology

abbrev putnam_1986_b4_solution : Prop := sorry
-- True
theorem putnam_1986_b4
(G : ℝ → ℝ)
(hGeq : ∀ r : ℝ, ∃ m n : ℤ, G r = |r - sqrt (m ^ 2 + 2 * n ^ 2)|)
(hGlb : ∀ r : ℝ, ∀ m n : ℤ, G r ≤ |r - sqrt (m ^ 2 + 2 * n ^ 2)|)
: (Tendsto G ⊤ (𝓝 0) ↔ putnam_1986_b4_solution) :=
sorry

open MvPolynomial

abbrev putnam_1986_b5_solution : Prop := sorry
-- False
theorem putnam_1986_b5
(f : MvPolynomial (Fin 3) ℝ := (X 0) ^ 2 + (X 1) ^ 2 + (X 2) ^ 2 + (X 0) * (X 1) * (X 2))
(perms : Set (Set (MvPolynomial (Fin 3) ℝ)) := {{X 0, X 1, X 2}, {X 0, -X 1, -X 2}, {-X 0, X 1, -X 2}, {-X 0, -X 1, X 2}})
: ((∀ pqr : Fin 3 → MvPolynomial (Fin 3) ℝ, (∀ xyz : Fin 3 → ℝ, MvPolynomial.eval (fun i ↦ MvPolynomial.eval xyz (pqr i)) f = MvPolynomial.eval xyz f) → ({pqr 0, pqr 1, pqr 2} ∈ perms)) ↔ putnam_1986_b5_solution) :=
sorry

open Matrix

theorem putnam_1986_b6
(n : ℕ)
(npos : n > 0)
(F : Type*) [Field F]
(A B C D : Matrix (Fin n) (Fin n) F)
(hsymm : IsSymm (A * Bᵀ) ∧ IsSymm (C * Dᵀ))
(hid : A * Dᵀ - B * Cᵀ = 1)
: (Aᵀ * D - Cᵀ * B = 1) :=
sorry

