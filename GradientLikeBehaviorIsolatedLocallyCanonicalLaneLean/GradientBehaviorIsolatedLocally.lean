import HautevilleHouse.GradientBehaviorIsolatedLocallyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GradientBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientBehaviorIsolatedLocallyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : SmoothManifoldWithCorners ℝ manifold
  gradientIsolated : VectorBundle ℝ (TangentSpace manifold) → Prop
  localClosure : Set manifold → Prop
  gradientBehaviorClosed : Prop
  isolatedLocalStructure : Prop

def GradientBehaviorIsolatedLocallyClosed (P : GradientBehaviorIsolatedLocallyPackage) : Prop :=
  P.gradientBehaviorClosed ∧ P.isolatedLocalStructure

end GradientBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse